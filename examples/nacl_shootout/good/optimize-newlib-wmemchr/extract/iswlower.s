  .text
  .globl iswlower
  .type iswlower, @function

#! file-offset 0x15eb60
#! rip-offset  0x11eb60
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswlower:                 #        0x11eb60  0      OPC=<label>         
  pushq %rbx               #  1     0x11eb60  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11eb61  2      OPC=movl_r32_r32    
  nop                      #  3     0x11eb63  1      OPC=nop             
  nop                      #  4     0x11eb64  1      OPC=nop             
  nop                      #  5     0x11eb65  1      OPC=nop             
  nop                      #  6     0x11eb66  1      OPC=nop             
  nop                      #  7     0x11eb67  1      OPC=nop             
  nop                      #  8     0x11eb68  1      OPC=nop             
  nop                      #  9     0x11eb69  1      OPC=nop             
  nop                      #  10    0x11eb6a  1      OPC=nop             
  nop                      #  11    0x11eb6b  1      OPC=nop             
  nop                      #  12    0x11eb6c  1      OPC=nop             
  nop                      #  13    0x11eb6d  1      OPC=nop             
  nop                      #  14    0x11eb6e  1      OPC=nop             
  nop                      #  15    0x11eb6f  1      OPC=nop             
  nop                      #  16    0x11eb70  1      OPC=nop             
  nop                      #  17    0x11eb71  1      OPC=nop             
  nop                      #  18    0x11eb72  1      OPC=nop             
  nop                      #  19    0x11eb73  1      OPC=nop             
  nop                      #  20    0x11eb74  1      OPC=nop             
  nop                      #  21    0x11eb75  1      OPC=nop             
  nop                      #  22    0x11eb76  1      OPC=nop             
  nop                      #  23    0x11eb77  1      OPC=nop             
  nop                      #  24    0x11eb78  1      OPC=nop             
  nop                      #  25    0x11eb79  1      OPC=nop             
  nop                      #  26    0x11eb7a  1      OPC=nop             
  callq .towupper          #  27    0x11eb7b  5      OPC=callq_label     
  cmpl %ebx, %eax          #  28    0x11eb80  2      OPC=cmpl_r32_r32    
  popq %rbx                #  29    0x11eb82  1      OPC=popq_r64_1      
  popq %r11                #  30    0x11eb83  2      OPC=popq_r64_1      
  setne %al                #  31    0x11eb85  3      OPC=setne_r8        
  movzbl %al, %eax         #  32    0x11eb88  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  33    0x11eb8b  7      OPC=andl_r32_imm32  
  nop                      #  34    0x11eb92  1      OPC=nop             
  nop                      #  35    0x11eb93  1      OPC=nop             
  nop                      #  36    0x11eb94  1      OPC=nop             
  nop                      #  37    0x11eb95  1      OPC=nop             
  addq %r15, %r11          #  38    0x11eb96  3      OPC=addq_r64_r64    
  jmpq %r11                #  39    0x11eb99  3      OPC=jmpq_r64        
  nop                      #  40    0x11eb9c  1      OPC=nop             
  nop                      #  41    0x11eb9d  1      OPC=nop             
  nop                      #  42    0x11eb9e  1      OPC=nop             
  nop                      #  43    0x11eb9f  1      OPC=nop             
  nop                      #  44    0x11eba0  1      OPC=nop             
  nop                      #  45    0x11eba1  1      OPC=nop             
  nop                      #  46    0x11eba2  1      OPC=nop             
  nop                      #  47    0x11eba3  1      OPC=nop             
  nop                      #  48    0x11eba4  1      OPC=nop             
  nop                      #  49    0x11eba5  1      OPC=nop             
  nop                      #  50    0x11eba6  1      OPC=nop             
                                                                         
.size iswlower, .-iswlower

