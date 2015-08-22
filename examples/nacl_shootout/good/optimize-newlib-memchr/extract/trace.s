  .text
  .globl trace
  .type trace, @function

#! file-offset 0x65bc0
#! rip-offset  0x25bc0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.trace:                         #        0x25bc0  0      OPC=<label>         
  pushq %rbx                    #  1     0x25bc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0x25bc1  2      OPC=movl_r32_r32    
  movl 0x1004b573(%rip), %eax   #  3     0x25bc3  6      OPC=movl_r32_m32    
  subl $0x1, %eax               #  4     0x25bc9  3      OPC=subl_r32_imm8   
  movl %eax, 0x1004b56a(%rip)   #  5     0x25bcc  6      OPC=movl_m32_r32    
  testl %eax, %eax              #  6     0x25bd2  2      OPC=testl_r32_r32   
  jle .L_25be0                  #  7     0x25bd4  2      OPC=jle_label       
  movsbl %bl, %edi              #  8     0x25bd6  3      OPC=movsbl_r32_r8   
  popq %rbx                     #  9     0x25bd9  1      OPC=popq_r64_1      
  jmpq .putchar                 #  10    0x25bda  5      OPC=jmpq_label_1    
  nop                           #  11    0x25bdf  1      OPC=nop             
.L_25be0:                       #        0x25be0  0      OPC=<label>         
  movl $0xa, %edi               #  12    0x25be0  5      OPC=movl_r32_imm32  
  nop                           #  13    0x25be5  1      OPC=nop             
  nop                           #  14    0x25be6  1      OPC=nop             
  nop                           #  15    0x25be7  1      OPC=nop             
  nop                           #  16    0x25be8  1      OPC=nop             
  nop                           #  17    0x25be9  1      OPC=nop             
  nop                           #  18    0x25bea  1      OPC=nop             
  nop                           #  19    0x25beb  1      OPC=nop             
  nop                           #  20    0x25bec  1      OPC=nop             
  nop                           #  21    0x25bed  1      OPC=nop             
  nop                           #  22    0x25bee  1      OPC=nop             
  nop                           #  23    0x25bef  1      OPC=nop             
  nop                           #  24    0x25bf0  1      OPC=nop             
  nop                           #  25    0x25bf1  1      OPC=nop             
  nop                           #  26    0x25bf2  1      OPC=nop             
  nop                           #  27    0x25bf3  1      OPC=nop             
  nop                           #  28    0x25bf4  1      OPC=nop             
  nop                           #  29    0x25bf5  1      OPC=nop             
  nop                           #  30    0x25bf6  1      OPC=nop             
  nop                           #  31    0x25bf7  1      OPC=nop             
  nop                           #  32    0x25bf8  1      OPC=nop             
  nop                           #  33    0x25bf9  1      OPC=nop             
  nop                           #  34    0x25bfa  1      OPC=nop             
  callq .putchar                #  35    0x25bfb  5      OPC=callq_label     
  movl $0x32, 0x1004b532(%rip)  #  36    0x25c00  10     OPC=movl_m32_imm32  
  movsbl %bl, %edi              #  37    0x25c0a  3      OPC=movsbl_r32_r8   
  popq %rbx                     #  38    0x25c0d  1      OPC=popq_r64_1      
  jmpq .putchar                 #  39    0x25c0e  5      OPC=jmpq_label_1    
  nop                           #  40    0x25c13  1      OPC=nop             
  nop                           #  41    0x25c14  1      OPC=nop             
  nop                           #  42    0x25c15  1      OPC=nop             
  nop                           #  43    0x25c16  1      OPC=nop             
  nop                           #  44    0x25c17  1      OPC=nop             
  nop                           #  45    0x25c18  1      OPC=nop             
  nop                           #  46    0x25c19  1      OPC=nop             
  nop                           #  47    0x25c1a  1      OPC=nop             
  nop                           #  48    0x25c1b  1      OPC=nop             
  nop                           #  49    0x25c1c  1      OPC=nop             
  nop                           #  50    0x25c1d  1      OPC=nop             
  nop                           #  51    0x25c1e  1      OPC=nop             
  nop                           #  52    0x25c1f  1      OPC=nop             
                                                                             
.size trace, .-trace

