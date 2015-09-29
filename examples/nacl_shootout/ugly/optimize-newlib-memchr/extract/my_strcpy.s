  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69ee0
#! rip-offset  0x29ee0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.my_strcpy:                   #        0x29ee0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x29ee0  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  2     0x29ee2  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x29ee4  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %edx  #  4     0x29ee6  5      OPC=movzbl_r32_m8   
  testb %dl, %dl              #  5     0x29eeb  2      OPC=testb_r8_r8     
  je .L_29f20                 #  6     0x29eed  2      OPC=je_label        
  movq %rax, %rcx             #  7     0x29eef  3      OPC=movq_r64_r64    
  nop                         #  8     0x29ef2  1      OPC=nop             
  nop                         #  9     0x29ef3  1      OPC=nop             
  nop                         #  10    0x29ef4  1      OPC=nop             
  nop                         #  11    0x29ef5  1      OPC=nop             
  nop                         #  12    0x29ef6  1      OPC=nop             
  nop                         #  13    0x29ef7  1      OPC=nop             
  nop                         #  14    0x29ef8  1      OPC=nop             
  nop                         #  15    0x29ef9  1      OPC=nop             
  nop                         #  16    0x29efa  1      OPC=nop             
  nop                         #  17    0x29efb  1      OPC=nop             
  nop                         #  18    0x29efc  1      OPC=nop             
  nop                         #  19    0x29efd  1      OPC=nop             
  nop                         #  20    0x29efe  1      OPC=nop             
  nop                         #  21    0x29eff  1      OPC=nop             
.L_29f00:                     #        0x29f00  0      OPC=<label>         
  movl %ecx, %ecx             #  22    0x29f00  2      OPC=movl_r32_r32    
  movb %dl, (%r15,%rcx,1)     #  23    0x29f02  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  24    0x29f06  3      OPC=addl_r32_imm8   
  addl $0x1, %esi             #  25    0x29f09  3      OPC=addl_r32_imm8   
  movl %esi, %esi             #  26    0x29f0c  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %edx  #  27    0x29f0e  5      OPC=movzbl_r32_m8   
  testb %dl, %dl              #  28    0x29f13  2      OPC=testb_r8_r8     
  jne .L_29f00                #  29    0x29f15  2      OPC=jne_label       
  nop                         #  30    0x29f17  1      OPC=nop             
  nop                         #  31    0x29f18  1      OPC=nop             
  nop                         #  32    0x29f19  1      OPC=nop             
  nop                         #  33    0x29f1a  1      OPC=nop             
  nop                         #  34    0x29f1b  1      OPC=nop             
  nop                         #  35    0x29f1c  1      OPC=nop             
  nop                         #  36    0x29f1d  1      OPC=nop             
  nop                         #  37    0x29f1e  1      OPC=nop             
  nop                         #  38    0x29f1f  1      OPC=nop             
.L_29f20:                     #        0x29f20  0      OPC=<label>         
  popq %r11                   #  39    0x29f20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  40    0x29f22  7      OPC=andl_r32_imm32  
  nop                         #  41    0x29f29  1      OPC=nop             
  nop                         #  42    0x29f2a  1      OPC=nop             
  nop                         #  43    0x29f2b  1      OPC=nop             
  nop                         #  44    0x29f2c  1      OPC=nop             
  addq %r15, %r11             #  45    0x29f2d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  46    0x29f30  3      OPC=jmpq_r64        
  nop                         #  47    0x29f33  1      OPC=nop             
  nop                         #  48    0x29f34  1      OPC=nop             
  nop                         #  49    0x29f35  1      OPC=nop             
  nop                         #  50    0x29f36  1      OPC=nop             
  nop                         #  51    0x29f37  1      OPC=nop             
  nop                         #  52    0x29f38  1      OPC=nop             
  nop                         #  53    0x29f39  1      OPC=nop             
  nop                         #  54    0x29f3a  1      OPC=nop             
  nop                         #  55    0x29f3b  1      OPC=nop             
  nop                         #  56    0x29f3c  1      OPC=nop             
  nop                         #  57    0x29f3d  1      OPC=nop             
  nop                         #  58    0x29f3e  1      OPC=nop             
  nop                         #  59    0x29f3f  1      OPC=nop             
  nop                         #  60    0x29f40  1      OPC=nop             
  nop                         #  61    0x29f41  1      OPC=nop             
  nop                         #  62    0x29f42  1      OPC=nop             
  nop                         #  63    0x29f43  1      OPC=nop             
  nop                         #  64    0x29f44  1      OPC=nop             
  nop                         #  65    0x29f45  1      OPC=nop             
  nop                         #  66    0x29f46  1      OPC=nop             
                                                                           
.size my_strcpy, .-my_strcpy

