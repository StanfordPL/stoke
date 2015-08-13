  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x69960
#! rip-offset  0x29960
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.my_strcpy:                   #        0x29960  0      OPC=<label>         
  movl %edi, %eax             #  1     0x29960  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  2     0x29962  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x29964  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %edx  #  4     0x29966  5      OPC=movzbl_r32_m8   
  testb %dl, %dl              #  5     0x2996b  2      OPC=testb_r8_r8     
  je .L_299a0                 #  6     0x2996d  2      OPC=je_label        
  movq %rax, %rcx             #  7     0x2996f  3      OPC=movq_r64_r64    
  nop                         #  8     0x29972  1      OPC=nop             
  nop                         #  9     0x29973  1      OPC=nop             
  nop                         #  10    0x29974  1      OPC=nop             
  nop                         #  11    0x29975  1      OPC=nop             
  nop                         #  12    0x29976  1      OPC=nop             
  nop                         #  13    0x29977  1      OPC=nop             
  nop                         #  14    0x29978  1      OPC=nop             
  nop                         #  15    0x29979  1      OPC=nop             
  nop                         #  16    0x2997a  1      OPC=nop             
  nop                         #  17    0x2997b  1      OPC=nop             
  nop                         #  18    0x2997c  1      OPC=nop             
  nop                         #  19    0x2997d  1      OPC=nop             
  nop                         #  20    0x2997e  1      OPC=nop             
  nop                         #  21    0x2997f  1      OPC=nop             
.L_29980:                     #        0x29980  0      OPC=<label>         
  movl %ecx, %ecx             #  22    0x29980  2      OPC=movl_r32_r32    
  movb %dl, (%r15,%rcx,1)     #  23    0x29982  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  24    0x29986  3      OPC=addl_r32_imm8   
  addl $0x1, %esi             #  25    0x29989  3      OPC=addl_r32_imm8   
  movl %esi, %esi             #  26    0x2998c  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %edx  #  27    0x2998e  5      OPC=movzbl_r32_m8   
  testb %dl, %dl              #  28    0x29993  2      OPC=testb_r8_r8     
  jne .L_29980                #  29    0x29995  2      OPC=jne_label       
  nop                         #  30    0x29997  1      OPC=nop             
  nop                         #  31    0x29998  1      OPC=nop             
  nop                         #  32    0x29999  1      OPC=nop             
  nop                         #  33    0x2999a  1      OPC=nop             
  nop                         #  34    0x2999b  1      OPC=nop             
  nop                         #  35    0x2999c  1      OPC=nop             
  nop                         #  36    0x2999d  1      OPC=nop             
  nop                         #  37    0x2999e  1      OPC=nop             
  nop                         #  38    0x2999f  1      OPC=nop             
.L_299a0:                     #        0x299a0  0      OPC=<label>         
  popq %r11                   #  39    0x299a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  40    0x299a2  7      OPC=andl_r32_imm32  
  nop                         #  41    0x299a9  1      OPC=nop             
  nop                         #  42    0x299aa  1      OPC=nop             
  nop                         #  43    0x299ab  1      OPC=nop             
  nop                         #  44    0x299ac  1      OPC=nop             
  addq %r15, %r11             #  45    0x299ad  3      OPC=addq_r64_r64    
  jmpq %r11                   #  46    0x299b0  3      OPC=jmpq_r64        
  nop                         #  47    0x299b3  1      OPC=nop             
  nop                         #  48    0x299b4  1      OPC=nop             
  nop                         #  49    0x299b5  1      OPC=nop             
  nop                         #  50    0x299b6  1      OPC=nop             
  nop                         #  51    0x299b7  1      OPC=nop             
  nop                         #  52    0x299b8  1      OPC=nop             
  nop                         #  53    0x299b9  1      OPC=nop             
  nop                         #  54    0x299ba  1      OPC=nop             
  nop                         #  55    0x299bb  1      OPC=nop             
  nop                         #  56    0x299bc  1      OPC=nop             
  nop                         #  57    0x299bd  1      OPC=nop             
  nop                         #  58    0x299be  1      OPC=nop             
  nop                         #  59    0x299bf  1      OPC=nop             
  nop                         #  60    0x299c0  1      OPC=nop             
  nop                         #  61    0x299c1  1      OPC=nop             
  nop                         #  62    0x299c2  1      OPC=nop             
  nop                         #  63    0x299c3  1      OPC=nop             
  nop                         #  64    0x299c4  1      OPC=nop             
  nop                         #  65    0x299c5  1      OPC=nop             
  nop                         #  66    0x299c6  1      OPC=nop             
                                                                           
.size my_strcpy, .-my_strcpy

