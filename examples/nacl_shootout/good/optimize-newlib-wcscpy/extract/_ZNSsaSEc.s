  .text
  .globl _ZNSsaSEc
  .type _ZNSsaSEc, @function

#! file-offset 0xee7e0
#! rip-offset  0xae7e0
#! capacity    96 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNSsaSEc:                          #        0xae7e0  0      OPC=<label>         
  pushq %rbx                         #  1     0xae7e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0xae7e1  2      OPC=movl_r32_r32    
  movsbl %sil, %r8d                  #  3     0xae7e3  4      OPC=movsbl_r32_r8   
  movl %ebx, %ebx                    #  4     0xae7e7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax           #  5     0xae7e9  4      OPC=movl_r32_m32    
  movl %ebx, %edi                    #  6     0xae7ed  2      OPC=movl_r32_r32    
  movl $0x1, %ecx                    #  7     0xae7ef  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                    #  8     0xae7f4  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                    #  9     0xae7f6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                    #  10    0xae7f9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx           #  11    0xae7fb  4      OPC=movl_r32_m32    
  nop                                #  12    0xae7ff  1      OPC=nop             
  nop                                #  13    0xae800  1      OPC=nop             
  nop                                #  14    0xae801  1      OPC=nop             
  nop                                #  15    0xae802  1      OPC=nop             
  nop                                #  16    0xae803  1      OPC=nop             
  nop                                #  17    0xae804  1      OPC=nop             
  nop                                #  18    0xae805  1      OPC=nop             
  nop                                #  19    0xae806  1      OPC=nop             
  nop                                #  20    0xae807  1      OPC=nop             
  nop                                #  21    0xae808  1      OPC=nop             
  nop                                #  22    0xae809  1      OPC=nop             
  nop                                #  23    0xae80a  1      OPC=nop             
  nop                                #  24    0xae80b  1      OPC=nop             
  nop                                #  25    0xae80c  1      OPC=nop             
  nop                                #  26    0xae80d  1      OPC=nop             
  nop                                #  27    0xae80e  1      OPC=nop             
  nop                                #  28    0xae80f  1      OPC=nop             
  nop                                #  29    0xae810  1      OPC=nop             
  nop                                #  30    0xae811  1      OPC=nop             
  nop                                #  31    0xae812  1      OPC=nop             
  nop                                #  32    0xae813  1      OPC=nop             
  nop                                #  33    0xae814  1      OPC=nop             
  nop                                #  34    0xae815  1      OPC=nop             
  nop                                #  35    0xae816  1      OPC=nop             
  nop                                #  36    0xae817  1      OPC=nop             
  nop                                #  37    0xae818  1      OPC=nop             
  nop                                #  38    0xae819  1      OPC=nop             
  nop                                #  39    0xae81a  1      OPC=nop             
  callq ._ZNSs14_M_replace_auxEjjjc  #  40    0xae81b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0xae820  2      OPC=movl_r32_r32    
  popq %rbx                          #  42    0xae822  1      OPC=popq_r64_1      
  popq %r11                          #  43    0xae823  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  44    0xae825  7      OPC=andl_r32_imm32  
  nop                                #  45    0xae82c  1      OPC=nop             
  nop                                #  46    0xae82d  1      OPC=nop             
  nop                                #  47    0xae82e  1      OPC=nop             
  nop                                #  48    0xae82f  1      OPC=nop             
  addq %r15, %r11                    #  49    0xae830  3      OPC=addq_r64_r64    
  jmpq %r11                          #  50    0xae833  3      OPC=jmpq_r64        
  nop                                #  51    0xae836  1      OPC=nop             
  nop                                #  52    0xae837  1      OPC=nop             
  nop                                #  53    0xae838  1      OPC=nop             
  nop                                #  54    0xae839  1      OPC=nop             
  nop                                #  55    0xae83a  1      OPC=nop             
  nop                                #  56    0xae83b  1      OPC=nop             
  nop                                #  57    0xae83c  1      OPC=nop             
  nop                                #  58    0xae83d  1      OPC=nop             
  nop                                #  59    0xae83e  1      OPC=nop             
  nop                                #  60    0xae83f  1      OPC=nop             
  nop                                #  61    0xae840  1      OPC=nop             
  nop                                #  62    0xae841  1      OPC=nop             
  nop                                #  63    0xae842  1      OPC=nop             
  nop                                #  64    0xae843  1      OPC=nop             
  nop                                #  65    0xae844  1      OPC=nop             
  nop                                #  66    0xae845  1      OPC=nop             
  nop                                #  67    0xae846  1      OPC=nop             
                                                                                  
.size _ZNSsaSEc, .-_ZNSsaSEc

