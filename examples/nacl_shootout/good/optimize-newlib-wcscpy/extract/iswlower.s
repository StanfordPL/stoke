  .text
  .globl iswlower
  .type iswlower, @function

#! file-offset 0x15e860
#! rip-offset  0x11e860
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswlower:                 #        0x11e860  0      OPC=<label>         
  pushq %rbx               #  1     0x11e860  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11e861  2      OPC=movl_r32_r32    
  nop                      #  3     0x11e863  1      OPC=nop             
  nop                      #  4     0x11e864  1      OPC=nop             
  nop                      #  5     0x11e865  1      OPC=nop             
  nop                      #  6     0x11e866  1      OPC=nop             
  nop                      #  7     0x11e867  1      OPC=nop             
  nop                      #  8     0x11e868  1      OPC=nop             
  nop                      #  9     0x11e869  1      OPC=nop             
  nop                      #  10    0x11e86a  1      OPC=nop             
  nop                      #  11    0x11e86b  1      OPC=nop             
  nop                      #  12    0x11e86c  1      OPC=nop             
  nop                      #  13    0x11e86d  1      OPC=nop             
  nop                      #  14    0x11e86e  1      OPC=nop             
  nop                      #  15    0x11e86f  1      OPC=nop             
  nop                      #  16    0x11e870  1      OPC=nop             
  nop                      #  17    0x11e871  1      OPC=nop             
  nop                      #  18    0x11e872  1      OPC=nop             
  nop                      #  19    0x11e873  1      OPC=nop             
  nop                      #  20    0x11e874  1      OPC=nop             
  nop                      #  21    0x11e875  1      OPC=nop             
  nop                      #  22    0x11e876  1      OPC=nop             
  nop                      #  23    0x11e877  1      OPC=nop             
  nop                      #  24    0x11e878  1      OPC=nop             
  nop                      #  25    0x11e879  1      OPC=nop             
  nop                      #  26    0x11e87a  1      OPC=nop             
  callq .towupper          #  27    0x11e87b  5      OPC=callq_label     
  cmpl %ebx, %eax          #  28    0x11e880  2      OPC=cmpl_r32_r32    
  popq %rbx                #  29    0x11e882  1      OPC=popq_r64_1      
  popq %r11                #  30    0x11e883  2      OPC=popq_r64_1      
  setne %al                #  31    0x11e885  3      OPC=setne_r8        
  movzbl %al, %eax         #  32    0x11e888  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  33    0x11e88b  7      OPC=andl_r32_imm32  
  nop                      #  34    0x11e892  1      OPC=nop             
  nop                      #  35    0x11e893  1      OPC=nop             
  nop                      #  36    0x11e894  1      OPC=nop             
  nop                      #  37    0x11e895  1      OPC=nop             
  addq %r15, %r11          #  38    0x11e896  3      OPC=addq_r64_r64    
  jmpq %r11                #  39    0x11e899  3      OPC=jmpq_r64        
  nop                      #  40    0x11e89c  1      OPC=nop             
  nop                      #  41    0x11e89d  1      OPC=nop             
  nop                      #  42    0x11e89e  1      OPC=nop             
  nop                      #  43    0x11e89f  1      OPC=nop             
  nop                      #  44    0x11e8a0  1      OPC=nop             
  nop                      #  45    0x11e8a1  1      OPC=nop             
  nop                      #  46    0x11e8a2  1      OPC=nop             
  nop                      #  47    0x11e8a3  1      OPC=nop             
  nop                      #  48    0x11e8a4  1      OPC=nop             
  nop                      #  49    0x11e8a5  1      OPC=nop             
  nop                      #  50    0x11e8a6  1      OPC=nop             
                                                                         
.size iswlower, .-iswlower

