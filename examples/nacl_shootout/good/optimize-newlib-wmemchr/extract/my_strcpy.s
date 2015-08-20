  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69980
#! rip-offset  0x29980
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.my_strcpy:                   #        0x29980  0      OPC=<label>         
  movl %edi, %eax             #  1     0x29980  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  2     0x29982  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x29984  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %edx  #  4     0x29986  5      OPC=movzbl_r32_m8   
  testb %dl, %dl              #  5     0x2998b  2      OPC=testb_r8_r8     
  je .L_299c0                 #  6     0x2998d  2      OPC=je_label        
  movq %rax, %rcx             #  7     0x2998f  3      OPC=movq_r64_r64    
  nop                         #  8     0x29992  1      OPC=nop             
  nop                         #  9     0x29993  1      OPC=nop             
  nop                         #  10    0x29994  1      OPC=nop             
  nop                         #  11    0x29995  1      OPC=nop             
  nop                         #  12    0x29996  1      OPC=nop             
  nop                         #  13    0x29997  1      OPC=nop             
  nop                         #  14    0x29998  1      OPC=nop             
  nop                         #  15    0x29999  1      OPC=nop             
  nop                         #  16    0x2999a  1      OPC=nop             
  nop                         #  17    0x2999b  1      OPC=nop             
  nop                         #  18    0x2999c  1      OPC=nop             
  nop                         #  19    0x2999d  1      OPC=nop             
  nop                         #  20    0x2999e  1      OPC=nop             
  nop                         #  21    0x2999f  1      OPC=nop             
.L_299a0:                     #        0x299a0  0      OPC=<label>         
  movl %ecx, %ecx             #  22    0x299a0  2      OPC=movl_r32_r32    
  movb %dl, (%r15,%rcx,1)     #  23    0x299a2  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  24    0x299a6  3      OPC=addl_r32_imm8   
  addl $0x1, %esi             #  25    0x299a9  3      OPC=addl_r32_imm8   
  movl %esi, %esi             #  26    0x299ac  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %edx  #  27    0x299ae  5      OPC=movzbl_r32_m8   
  testb %dl, %dl              #  28    0x299b3  2      OPC=testb_r8_r8     
  jne .L_299a0                #  29    0x299b5  2      OPC=jne_label       
  nop                         #  30    0x299b7  1      OPC=nop             
  nop                         #  31    0x299b8  1      OPC=nop             
  nop                         #  32    0x299b9  1      OPC=nop             
  nop                         #  33    0x299ba  1      OPC=nop             
  nop                         #  34    0x299bb  1      OPC=nop             
  nop                         #  35    0x299bc  1      OPC=nop             
  nop                         #  36    0x299bd  1      OPC=nop             
  nop                         #  37    0x299be  1      OPC=nop             
  nop                         #  38    0x299bf  1      OPC=nop             
.L_299c0:                     #        0x299c0  0      OPC=<label>         
  popq %r11                   #  39    0x299c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  40    0x299c2  7      OPC=andl_r32_imm32  
  nop                         #  41    0x299c9  1      OPC=nop             
  nop                         #  42    0x299ca  1      OPC=nop             
  nop                         #  43    0x299cb  1      OPC=nop             
  nop                         #  44    0x299cc  1      OPC=nop             
  addq %r15, %r11             #  45    0x299cd  3      OPC=addq_r64_r64    
  jmpq %r11                   #  46    0x299d0  3      OPC=jmpq_r64        
  nop                         #  47    0x299d3  1      OPC=nop             
  nop                         #  48    0x299d4  1      OPC=nop             
  nop                         #  49    0x299d5  1      OPC=nop             
  nop                         #  50    0x299d6  1      OPC=nop             
  nop                         #  51    0x299d7  1      OPC=nop             
  nop                         #  52    0x299d8  1      OPC=nop             
  nop                         #  53    0x299d9  1      OPC=nop             
  nop                         #  54    0x299da  1      OPC=nop             
  nop                         #  55    0x299db  1      OPC=nop             
  nop                         #  56    0x299dc  1      OPC=nop             
  nop                         #  57    0x299dd  1      OPC=nop             
  nop                         #  58    0x299de  1      OPC=nop             
  nop                         #  59    0x299df  1      OPC=nop             
  nop                         #  60    0x299e0  1      OPC=nop             
  nop                         #  61    0x299e1  1      OPC=nop             
  nop                         #  62    0x299e2  1      OPC=nop             
  nop                         #  63    0x299e3  1      OPC=nop             
  nop                         #  64    0x299e4  1      OPC=nop             
  nop                         #  65    0x299e5  1      OPC=nop             
  nop                         #  66    0x299e6  1      OPC=nop             
                                                                           
.size my_strcpy, .-my_strcpy

