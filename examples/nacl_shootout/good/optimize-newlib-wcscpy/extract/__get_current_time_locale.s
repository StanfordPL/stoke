  .text
  .globl __get_current_time_locale
  .type __get_current_time_locale, @function

#! file-offset 0x174660
#! rip-offset  0x134660
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode               
.__get_current_time_locale:   #        0x134660  0      OPC=<label>          
  movl 0xff44af6(%rip), %edx  #  1     0x134660  6      OPC=movl_r32_m32     
  movl $0x100468a0, %eax      #  2     0x134666  5      OPC=movl_r32_imm32   
  popq %r11                   #  3     0x13466b  2      OPC=popq_r64_1       
  testl %edx, %edx            #  4     0x13466d  2      OPC=testl_r32_r32    
  movl $0x10079060, %edx      #  5     0x13466f  5      OPC=movl_r32_imm32   
  cmovneq %rdx, %rax          #  6     0x134674  4      OPC=cmovneq_r64_r64  
  nop                         #  7     0x134678  1      OPC=nop              
  nop                         #  8     0x134679  1      OPC=nop              
  nop                         #  9     0x13467a  1      OPC=nop              
  nop                         #  10    0x13467b  1      OPC=nop              
  nop                         #  11    0x13467c  1      OPC=nop              
  nop                         #  12    0x13467d  1      OPC=nop              
  nop                         #  13    0x13467e  1      OPC=nop              
  nop                         #  14    0x13467f  1      OPC=nop              
  andl $0xffffffe0, %r11d     #  15    0x134680  7      OPC=andl_r32_imm32   
  nop                         #  16    0x134687  1      OPC=nop              
  nop                         #  17    0x134688  1      OPC=nop              
  nop                         #  18    0x134689  1      OPC=nop              
  nop                         #  19    0x13468a  1      OPC=nop              
  addq %r15, %r11             #  20    0x13468b  3      OPC=addq_r64_r64     
  jmpq %r11                   #  21    0x13468e  3      OPC=jmpq_r64         
  nop                         #  22    0x134691  1      OPC=nop              
  nop                         #  23    0x134692  1      OPC=nop              
  nop                         #  24    0x134693  1      OPC=nop              
  nop                         #  25    0x134694  1      OPC=nop              
  nop                         #  26    0x134695  1      OPC=nop              
  nop                         #  27    0x134696  1      OPC=nop              
  nop                         #  28    0x134697  1      OPC=nop              
  nop                         #  29    0x134698  1      OPC=nop              
  nop                         #  30    0x134699  1      OPC=nop              
  nop                         #  31    0x13469a  1      OPC=nop              
  nop                         #  32    0x13469b  1      OPC=nop              
  nop                         #  33    0x13469c  1      OPC=nop              
  nop                         #  34    0x13469d  1      OPC=nop              
  nop                         #  35    0x13469e  1      OPC=nop              
  nop                         #  36    0x13469f  1      OPC=nop              
  nop                         #  37    0x1346a0  1      OPC=nop              
  nop                         #  38    0x1346a1  1      OPC=nop              
  nop                         #  39    0x1346a2  1      OPC=nop              
  nop                         #  40    0x1346a3  1      OPC=nop              
  nop                         #  41    0x1346a4  1      OPC=nop              
  nop                         #  42    0x1346a5  1      OPC=nop              
  nop                         #  43    0x1346a6  1      OPC=nop              
                                                                             
.size __get_current_time_locale, .-__get_current_time_locale

