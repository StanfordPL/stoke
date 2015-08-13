  .text
  .globl __newlib_thread_init
  .type __newlib_thread_init, @function

#! file-offset 0x15e440
#! rip-offset  0x11e440
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__newlib_thread_init:            #        0x11e440  0      OPC=<label>         
  pushq %rbx                      #  1     0x11e440  1      OPC=pushq_r64_1     
  nop                             #  2     0x11e441  1      OPC=nop             
  nop                             #  3     0x11e442  1      OPC=nop             
  nop                             #  4     0x11e443  1      OPC=nop             
  nop                             #  5     0x11e444  1      OPC=nop             
  nop                             #  6     0x11e445  1      OPC=nop             
  nop                             #  7     0x11e446  1      OPC=nop             
  nop                             #  8     0x11e447  1      OPC=nop             
  nop                             #  9     0x11e448  1      OPC=nop             
  nop                             #  10    0x11e449  1      OPC=nop             
  nop                             #  11    0x11e44a  1      OPC=nop             
  nop                             #  12    0x11e44b  1      OPC=nop             
  nop                             #  13    0x11e44c  1      OPC=nop             
  nop                             #  14    0x11e44d  1      OPC=nop             
  nop                             #  15    0x11e44e  1      OPC=nop             
  nop                             #  16    0x11e44f  1      OPC=nop             
  nop                             #  17    0x11e450  1      OPC=nop             
  nop                             #  18    0x11e451  1      OPC=nop             
  nop                             #  19    0x11e452  1      OPC=nop             
  nop                             #  20    0x11e453  1      OPC=nop             
  nop                             #  21    0x11e454  1      OPC=nop             
  nop                             #  22    0x11e455  1      OPC=nop             
  nop                             #  23    0x11e456  1      OPC=nop             
  nop                             #  24    0x11e457  1      OPC=nop             
  nop                             #  25    0x11e458  1      OPC=nop             
  nop                             #  26    0x11e459  1      OPC=nop             
  nop                             #  27    0x11e45a  1      OPC=nop             
  callq .__nacl_read_tp           #  28    0x11e45b  5      OPC=callq_label     
  movq %rax, %rbx                 #  29    0x11e460  3      OPC=movq_r64_r64    
  nop                             #  30    0x11e463  1      OPC=nop             
  nop                             #  31    0x11e464  1      OPC=nop             
  nop                             #  32    0x11e465  1      OPC=nop             
  nop                             #  33    0x11e466  1      OPC=nop             
  nop                             #  34    0x11e467  1      OPC=nop             
  nop                             #  35    0x11e468  1      OPC=nop             
  nop                             #  36    0x11e469  1      OPC=nop             
  nop                             #  37    0x11e46a  1      OPC=nop             
  nop                             #  38    0x11e46b  1      OPC=nop             
  nop                             #  39    0x11e46c  1      OPC=nop             
  nop                             #  40    0x11e46d  1      OPC=nop             
  nop                             #  41    0x11e46e  1      OPC=nop             
  nop                             #  42    0x11e46f  1      OPC=nop             
  nop                             #  43    0x11e470  1      OPC=nop             
  nop                             #  44    0x11e471  1      OPC=nop             
  nop                             #  45    0x11e472  1      OPC=nop             
  nop                             #  46    0x11e473  1      OPC=nop             
  nop                             #  47    0x11e474  1      OPC=nop             
  nop                             #  48    0x11e475  1      OPC=nop             
  nop                             #  49    0x11e476  1      OPC=nop             
  nop                             #  50    0x11e477  1      OPC=nop             
  nop                             #  51    0x11e478  1      OPC=nop             
  nop                             #  52    0x11e479  1      OPC=nop             
  nop                             #  53    0x11e47a  1      OPC=nop             
  callq .__nacl_read_tp           #  54    0x11e47b  5      OPC=callq_label     
  addq $0xfffffb88, %rax          #  55    0x11e480  6      OPC=addq_rax_imm32  
  movl %ebx, %ebx                 #  56    0x11e486  2      OPC=movl_r32_r32    
  movl %eax, -0x480(%r15,%rbx,1)  #  57    0x11e488  8      OPC=movl_m32_r32    
  popq %rbx                       #  58    0x11e490  1      OPC=popq_r64_1      
  popq %r11                       #  59    0x11e491  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  60    0x11e493  7      OPC=andl_r32_imm32  
  nop                             #  61    0x11e49a  1      OPC=nop             
  nop                             #  62    0x11e49b  1      OPC=nop             
  nop                             #  63    0x11e49c  1      OPC=nop             
  nop                             #  64    0x11e49d  1      OPC=nop             
  addq %r15, %r11                 #  65    0x11e49e  3      OPC=addq_r64_r64    
  jmpq %r11                       #  66    0x11e4a1  3      OPC=jmpq_r64        
  nop                             #  67    0x11e4a4  1      OPC=nop             
  nop                             #  68    0x11e4a5  1      OPC=nop             
  nop                             #  69    0x11e4a6  1      OPC=nop             
                                                                                
.size __newlib_thread_init, .-__newlib_thread_init

