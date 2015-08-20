  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0xea860
#! rip-offset  0xaa860
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs4swapERSs:               #        0xaa860  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaa860  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0xaa862  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xaa864  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  4     0xaa866  4      OPC=movl_r32_m32    
  subl $0xc, %eax              #  5     0xaa86a  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  6     0xaa86d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r8d  #  7     0xaa86f  5      OPC=movl_r32_m32    
  testl %r8d, %r8d             #  8     0xaa874  3      OPC=testl_r32_r32   
  js .L_aa8c0                  #  9     0xaa877  2      OPC=js_label        
  nop                          #  10    0xaa879  1      OPC=nop             
  nop                          #  11    0xaa87a  1      OPC=nop             
  nop                          #  12    0xaa87b  1      OPC=nop             
  nop                          #  13    0xaa87c  1      OPC=nop             
  nop                          #  14    0xaa87d  1      OPC=nop             
  nop                          #  15    0xaa87e  1      OPC=nop             
  nop                          #  16    0xaa87f  1      OPC=nop             
.L_aa880:                      #        0xaa880  0      OPC=<label>         
  movl %esi, %esi              #  17    0xaa880  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  18    0xaa882  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx        #  19    0xaa886  3      OPC=leal_r32_m16    
  movl %edx, %edx              #  20    0xaa889  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx  #  21    0xaa88b  5      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  22    0xaa890  2      OPC=testl_r32_r32   
  jns .L_aa8a0                 #  23    0xaa892  2      OPC=jns_label       
  movl %edx, %edx              #  24    0xaa894  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdx,1)  #  25    0xaa896  9      OPC=movl_m32_imm32  
  nop                          #  26    0xaa89f  1      OPC=nop             
.L_aa8a0:                      #        0xaa8a0  0      OPC=<label>         
  movl %edi, %edi              #  27    0xaa8a0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx     #  28    0xaa8a2  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  29    0xaa8a6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  30    0xaa8a8  4      OPC=movl_m32_r32    
  popq %r11                    #  31    0xaa8ac  2      OPC=popq_r64_1      
  movl %esi, %esi              #  32    0xaa8ae  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)     #  33    0xaa8b0  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d      #  34    0xaa8b4  7      OPC=andl_r32_imm32  
  nop                          #  35    0xaa8bb  1      OPC=nop             
  nop                          #  36    0xaa8bc  1      OPC=nop             
  nop                          #  37    0xaa8bd  1      OPC=nop             
  nop                          #  38    0xaa8be  1      OPC=nop             
  addq %r15, %r11              #  39    0xaa8bf  3      OPC=addq_r64_r64    
  jmpq %r11                    #  40    0xaa8c2  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  41    0xaa8c5  2      OPC=xchgw_ax_r16    
.L_aa8c0:                      #        0xaa8c7  0      OPC=<label>         
  movl %eax, %eax              #  42    0xaa8c7  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)  #  43    0xaa8c9  9      OPC=movl_m32_imm32  
  jmpq .L_aa880                #  44    0xaa8d2  2      OPC=jmpq_label      
  nop                          #  45    0xaa8d4  1      OPC=nop             
  nop                          #  46    0xaa8d5  1      OPC=nop             
  nop                          #  47    0xaa8d6  1      OPC=nop             
  nop                          #  48    0xaa8d7  1      OPC=nop             
  nop                          #  49    0xaa8d8  1      OPC=nop             
  nop                          #  50    0xaa8d9  1      OPC=nop             
  nop                          #  51    0xaa8da  1      OPC=nop             
  nop                          #  52    0xaa8db  1      OPC=nop             
  nop                          #  53    0xaa8dc  1      OPC=nop             
  nop                          #  54    0xaa8dd  1      OPC=nop             
  nop                          #  55    0xaa8de  1      OPC=nop             
  nop                          #  56    0xaa8df  1      OPC=nop             
  nop                          #  57    0xaa8e0  1      OPC=nop             
  nop                          #  58    0xaa8e1  1      OPC=nop             
  nop                          #  59    0xaa8e2  1      OPC=nop             
  nop                          #  60    0xaa8e3  1      OPC=nop             
  nop                          #  61    0xaa8e4  1      OPC=nop             
  nop                          #  62    0xaa8e5  1      OPC=nop             
  nop                          #  63    0xaa8e6  1      OPC=nop             
                                                                            
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

