  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wmemchr:                   #        0     0      OPC=<label>         
  nop                       #  1     0     1      OPC=nop             
  nop                       #  2     0x1   1      OPC=nop             
  sarl $0x40, %edx          #  3     0x2   3      OPC=sarl_r32_imm8   
  nop                       #  4     0x5   1      OPC=nop             
  nop                       #  5     0x6   1      OPC=nop             
  nop                       #  6     0x7   1      OPC=nop             
  nop                       #  7     0x8   1      OPC=nop             
  nop                       #  8     0x9   1      OPC=nop             
  xorl %eax, %eax           #  9     0xa   2      OPC=xorl_r32_r32    
  testq %rdx, %rdx          #  10    0xc   3      OPC=testq_r64_r64   
  je .L_21                  #  11    0xf   2      OPC=je_label        
  leal (%rdi), %r8d         #  12    0x11  3      OPC=leal_r32_m16    
  cmpl %esi, (%r15,%r8,1)   #  13    0x14  4      OPC=cmpl_m32_r32    
  nop                       #  14    0x18  1      OPC=nop             
  jne .L_14                 #  15    0x19  2      OPC=jne_label       
  nop                       #  16    0x1b  1      OPC=nop             
  nop                       #  17    0x1c  1      OPC=nop             
  nop                       #  18    0x1d  1      OPC=nop             
  jmpq .L_28                #  19    0x1e  2      OPC=jmpq_label      
  nop                       #  20    0x20  1      OPC=nop             
  nop                       #  21    0x21  1      OPC=nop             
  nop                       #  22    0x22  1      OPC=nop             
.L_10:                      #        0x23  0      OPC=<label>         
  addl $0x4, %edi           #  23    0x23  6      OPC=addl_r32_imm32  
  cmpl %esi, (%r15,%rdi,1)  #  24    0x29  4      OPC=cmpl_m32_r32    
  je .L_28                  #  25    0x2d  2      OPC=je_label        
.L_14:                      #        0x2f  0      OPC=<label>         
  subl $0xffffffff, %eax    #  26    0x2f  6      OPC=subl_r32_imm32  
  cmpq %rdx, %rax           #  27    0x35  3      OPC=cmpq_r64_r64    
  jne .L_10                 #  28    0x38  2      OPC=jne_label       
  nop                       #  29    0x3a  1      OPC=nop             
  nop                       #  30    0x3b  1      OPC=nop             
  nop                       #  31    0x3c  1      OPC=nop             
  incb %al                  #  32    0x3d  2      OPC=incb_r8         
  nop                       #  33    0x3f  1      OPC=nop             
  nop                       #  34    0x40  1      OPC=nop             
  nop                       #  35    0x41  1      OPC=nop             
  nop                       #  36    0x42  1      OPC=nop             
  nop                       #  37    0x43  1      OPC=nop             
  nop                       #  38    0x44  1      OPC=nop             
  shrw $0xfb, %ax           #  39    0x45  4      OPC=shrw_r16_imm8   
.L_21:                      #        0x49  0      OPC=<label>         
  retq                      #  40    0x49  1      OPC=retq            
  nop                       #  41    0x4a  1      OPC=nop             
  nop                       #  42    0x4b  1      OPC=nop             
  nop                       #  43    0x4c  1      OPC=nop             
  nop                       #  44    0x4d  1      OPC=nop             
  nop                       #  45    0x4e  1      OPC=nop             
  nop                       #  46    0x4f  1      OPC=nop             
  nop                       #  47    0x50  1      OPC=nop             
  nop                       #  48    0x51  1      OPC=nop             
  nop                       #  49    0x52  1      OPC=nop             
.L_28:                      #        0x53  0      OPC=<label>         
  nop                       #  50    0x53  1      OPC=nop             
  nop                       #  51    0x54  1      OPC=nop             
  movl %edi, %eax           #  52    0x55  2      OPC=movl_r32_r32    
  nop                       #  53    0x57  1      OPC=nop             
  nop                       #  54    0x58  1      OPC=nop             
  nop                       #  55    0x59  1      OPC=nop             
  retq                      #  56    0x5a  1      OPC=retq            
                                                                      
.size wmemchr, .-wmemchr
