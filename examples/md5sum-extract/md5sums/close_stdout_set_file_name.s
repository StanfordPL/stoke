  .text
  .globl close_stdout_set_file_name
  .type close_stdout_set_file_name, @function
close_stdout_set_file_name:
  movq   %rdi,0x206861(%rip)        
  retq   
  nop
  .size close_stdout_set_file_name, .-close_stdout_set_file_name
