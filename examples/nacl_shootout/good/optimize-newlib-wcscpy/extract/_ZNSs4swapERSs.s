  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0xea560
#! rip-offset  0xaa560
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs4swapERSs:               #        0xaa560  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaa560  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0xaa562  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xaa564  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  4     0xaa566  4      OPC=movl_r32_m32    
  subl $0xc, %eax              #  5     0xaa56a  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  6     0xaa56d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r8d  #  7     0xaa56f  5      OPC=movl_r32_m32    
  testl %r8d, %r8d             #  8     0xaa574  3      OPC=testl_r32_r32   
  js .L_aa5c0                  #  9     0xaa577  2      OPC=js_label        
  nop                          #  10    0xaa579  1      OPC=nop             
  nop                          #  11    0xaa57a  1      OPC=nop             
  nop                          #  12    0xaa57b  1      OPC=nop             
  nop                          #  13    0xaa57c  1      OPC=nop             
  nop                          #  14    0xaa57d  1      OPC=nop             
  nop                          #  15    0xaa57e  1      OPC=nop             
  nop                          #  16    0xaa57f  1      OPC=nop             
.L_aa580:                      #        0xaa580  0      OPC=<label>         
  movl %esi, %esi              #  17    0xaa580  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  18    0xaa582  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx        #  19    0xaa586  3      OPC=leal_r32_m16    
  movl %edx, %edx              #  20    0xaa589  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx  #  21    0xaa58b  5      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  22    0xaa590  2      OPC=testl_r32_r32   
  jns .L_aa5a0                 #  23    0xaa592  2      OPC=jns_label       
  movl %edx, %edx              #  24    0xaa594  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdx,1)  #  25    0xaa596  9      OPC=movl_m32_imm32  
  nop                          #  26    0xaa59f  1      OPC=nop             
.L_aa5a0:                      #        0xaa5a0  0      OPC=<label>         
  movl %edi, %edi              #  27    0xaa5a0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx     #  28    0xaa5a2  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  29    0xaa5a6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  30    0xaa5a8  4      OPC=movl_m32_r32    
  popq %r11                    #  31    0xaa5ac  2      OPC=popq_r64_1      
  movl %esi, %esi              #  32    0xaa5ae  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)     #  33    0xaa5b0  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d      #  34    0xaa5b4  7      OPC=andl_r32_imm32  
  nop                          #  35    0xaa5bb  1      OPC=nop             
  nop                          #  36    0xaa5bc  1      OPC=nop             
  nop                          #  37    0xaa5bd  1      OPC=nop             
  nop                          #  38    0xaa5be  1      OPC=nop             
  addq %r15, %r11              #  39    0xaa5bf  3      OPC=addq_r64_r64    
  jmpq %r11                    #  40    0xaa5c2  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  41    0xaa5c5  2      OPC=xchgw_ax_r16    
.L_aa5c0:                      #        0xaa5c7  0      OPC=<label>         
  movl %eax, %eax              #  42    0xaa5c7  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)  #  43    0xaa5c9  9      OPC=movl_m32_imm32  
  jmpq .L_aa580                #  44    0xaa5d2  2      OPC=jmpq_label      
  nop                          #  45    0xaa5d4  1      OPC=nop             
  nop                          #  46    0xaa5d5  1      OPC=nop             
  nop                          #  47    0xaa5d6  1      OPC=nop             
  nop                          #  48    0xaa5d7  1      OPC=nop             
  nop                          #  49    0xaa5d8  1      OPC=nop             
  nop                          #  50    0xaa5d9  1      OPC=nop             
  nop                          #  51    0xaa5da  1      OPC=nop             
  nop                          #  52    0xaa5db  1      OPC=nop             
  nop                          #  53    0xaa5dc  1      OPC=nop             
  nop                          #  54    0xaa5dd  1      OPC=nop             
  nop                          #  55    0xaa5de  1      OPC=nop             
  nop                          #  56    0xaa5df  1      OPC=nop             
  nop                          #  57    0xaa5e0  1      OPC=nop             
  nop                          #  58    0xaa5e1  1      OPC=nop             
  nop                          #  59    0xaa5e2  1      OPC=nop             
  nop                          #  60    0xaa5e3  1      OPC=nop             
  nop                          #  61    0xaa5e4  1      OPC=nop             
  nop                          #  62    0xaa5e5  1      OPC=nop             
  nop                          #  63    0xaa5e6  1      OPC=nop             
                                                                            
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

