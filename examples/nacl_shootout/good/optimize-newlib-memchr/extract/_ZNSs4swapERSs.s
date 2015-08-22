  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0xeaf80
#! rip-offset  0xaaf80
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs4swapERSs:               #        0xaaf80  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaaf80  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0xaaf82  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xaaf84  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  4     0xaaf86  4      OPC=movl_r32_m32    
  subl $0xc, %eax              #  5     0xaaf8a  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  6     0xaaf8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r8d  #  7     0xaaf8f  5      OPC=movl_r32_m32    
  testl %r8d, %r8d             #  8     0xaaf94  3      OPC=testl_r32_r32   
  js .L_aafe0                  #  9     0xaaf97  2      OPC=js_label        
  nop                          #  10    0xaaf99  1      OPC=nop             
  nop                          #  11    0xaaf9a  1      OPC=nop             
  nop                          #  12    0xaaf9b  1      OPC=nop             
  nop                          #  13    0xaaf9c  1      OPC=nop             
  nop                          #  14    0xaaf9d  1      OPC=nop             
  nop                          #  15    0xaaf9e  1      OPC=nop             
  nop                          #  16    0xaaf9f  1      OPC=nop             
.L_aafa0:                      #        0xaafa0  0      OPC=<label>         
  movl %esi, %esi              #  17    0xaafa0  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  18    0xaafa2  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx        #  19    0xaafa6  3      OPC=leal_r32_m16    
  movl %edx, %edx              #  20    0xaafa9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx  #  21    0xaafab  5      OPC=movl_r32_m32    
  testl %ecx, %ecx             #  22    0xaafb0  2      OPC=testl_r32_r32   
  jns .L_aafc0                 #  23    0xaafb2  2      OPC=jns_label       
  movl %edx, %edx              #  24    0xaafb4  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdx,1)  #  25    0xaafb6  9      OPC=movl_m32_imm32  
  nop                          #  26    0xaafbf  1      OPC=nop             
.L_aafc0:                      #        0xaafc0  0      OPC=<label>         
  movl %edi, %edi              #  27    0xaafc0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx     #  28    0xaafc2  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  29    0xaafc6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  30    0xaafc8  4      OPC=movl_m32_r32    
  popq %r11                    #  31    0xaafcc  2      OPC=popq_r64_1      
  movl %esi, %esi              #  32    0xaafce  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)     #  33    0xaafd0  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d      #  34    0xaafd4  7      OPC=andl_r32_imm32  
  nop                          #  35    0xaafdb  1      OPC=nop             
  nop                          #  36    0xaafdc  1      OPC=nop             
  nop                          #  37    0xaafdd  1      OPC=nop             
  nop                          #  38    0xaafde  1      OPC=nop             
  addq %r15, %r11              #  39    0xaafdf  3      OPC=addq_r64_r64    
  jmpq %r11                    #  40    0xaafe2  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  41    0xaafe5  2      OPC=xchgw_ax_r16    
.L_aafe0:                      #        0xaafe7  0      OPC=<label>         
  movl %eax, %eax              #  42    0xaafe7  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)  #  43    0xaafe9  9      OPC=movl_m32_imm32  
  jmpq .L_aafa0                #  44    0xaaff2  2      OPC=jmpq_label      
  nop                          #  45    0xaaff4  1      OPC=nop             
  nop                          #  46    0xaaff5  1      OPC=nop             
  nop                          #  47    0xaaff6  1      OPC=nop             
  nop                          #  48    0xaaff7  1      OPC=nop             
  nop                          #  49    0xaaff8  1      OPC=nop             
  nop                          #  50    0xaaff9  1      OPC=nop             
  nop                          #  51    0xaaffa  1      OPC=nop             
  nop                          #  52    0xaaffb  1      OPC=nop             
  nop                          #  53    0xaaffc  1      OPC=nop             
  nop                          #  54    0xaaffd  1      OPC=nop             
  nop                          #  55    0xaaffe  1      OPC=nop             
  nop                          #  56    0xaafff  1      OPC=nop             
  nop                          #  57    0xab000  1      OPC=nop             
  nop                          #  58    0xab001  1      OPC=nop             
  nop                          #  59    0xab002  1      OPC=nop             
  nop                          #  60    0xab003  1      OPC=nop             
  nop                          #  61    0xab004  1      OPC=nop             
  nop                          #  62    0xab005  1      OPC=nop             
  nop                          #  63    0xab006  1      OPC=nop             
                                                                            
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

