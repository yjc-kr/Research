# 필요한 패키지
library(ape)
library(poweRbal)

# --- 파라미터 설정 ---
size_list <- c(8, 16)
replications <- 512

# 모델별 파라미터
params <- list(
  Yule = list(NULL),
  BD = list(
    c(1.0, 0.0), c(1.5, 0.2), c(2.0, 0.4),
    c(0.8, 0.2), c(1.2, 0.4), c(1.5, 0.0)
  ),
  BetaSplitting = c(-2.0, -1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5, 2.0),
  PDA = list(NULL)
)

# --- 출력 경로 ---
out_path <- "Polytomy/Codes/nwk"  # 현재 작업 디렉토리 기준
if(!dir.exists(out_path)){
  dir.create(out_path, recursive = TRUE)
}

# --- 트리 생성 함수 ---
generate_trees <- function(model, param, size, reps){
  trees <- vector("list", reps)
  
  for(i in 1:reps){
    if(model == "Yule"){
      trees[[i]] <- genYuleTree(n = size)
    } else if(model == "BD"){
      trees[[i]] <- genAltBirthDeathTree(n = size, BIRTHRATE = param[1], DEATHRATE = param[2], TRIES = 100)
    } else if(model == "BetaSplitting"){
      beta <- param
      trees[[i]] <- genAldousBetaTree(n = size, BETA = beta)
    } else if(model == "PDA"){
      trees[[i]] <- genPDATree(n = size)
    }
  }
  
  return(trees)
}

# --- 모든 트리 생성 및 NWK 파일 저장 ---
for(model in names(params)){
  model_params <- params[[model]]
  
  # BetaSplitting은 벡터, BD는 리스트, 나머지는 NULL
  if(model %in% c("Yule", "PDA")){
    model_params <- list(NULL)
  }
  
  for(param in model_params){
    for(size in size_list){
      trees <- generate_trees(model, param, size, replications)
      
      # 파일명 구성
      if(model == "Yule" || model == "PDA"){
        file_name <- sprintf("%s_n%d.nwk", model, size)
      } else if(model == "BD"){
        file_name <- sprintf("%s_l%.1f_m%.1f_n%d.nwk", model, param[1], param[2], size)
      } else if(model == "BetaSplitting"){
        file_name <- sprintf("%s_b%.1f_n%d.nwk", model, param, size)
      }
      
      full_path <- file.path(out_path, file_name)
      
      # NWK로 저장: 한 줄에 하나씩
      write.tree(trees, file = full_path)
      cat("Saved:", full_path, "\n")
    }
  }
}