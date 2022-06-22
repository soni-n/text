#
# # Install the reticulate package (which link R and python)
#  install.packages("reticulate")
# # open the library
#  library(reticulate)
#
# # Sourcing the python file with the huggingface function
# # (can be found in the text-pacakge text/inst/python/huggingface_Interface3.py)
# reticulate::source_python(system.file("python",
#                                       "huggingface_Interface3.py",
#                                       # envir = NULL,
#                                       package = "text",
#                                       mustWork = TRUE
# ))
#
# # Creating test data
# message = c("hello how are you?", "I'm fine", "what are you doing?")
# user_id = c(1, 2, 1)
# te = c("2022-21-06 20:25:52", "2022-21-06 20:27:00", "2022-21-06 20:28:00")
# x <- data.frame(user_id, message, updated_time)
#
# # Using BERT; only submitting the text to the function
# hg_embeddings <- hgTransformerGetEmbedding(
#   text_strings = x[2][[1]])
#
# # Check the output
# # (it would be great if HaRT could give same format of output,
# # which is standard from HuggingFace )
# hg_embeddings
#
# HaRT_embeddings <- hgTransformerGetEmbedding(
#   text_strings = x,
#   mode = "hart"
# )
# HaRT_embeddings
#
# # testing it within the text-package
# textEmbedLayersOutput(x=x,
#                       model = "hart")
#
#
#
