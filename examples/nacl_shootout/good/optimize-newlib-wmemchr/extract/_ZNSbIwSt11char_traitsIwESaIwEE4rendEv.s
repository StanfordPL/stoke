  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x11a480
#! rip-offset  0xda480
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4rendEv:                  #        0xda480  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda480  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                         #  2     0xda485  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda487  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda48c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda48f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda492  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda494  4      OPC=movl_r32_m32    
  movl %edi, %r12d                                        #  8     0xda498  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda49b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda49e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda4a0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r8d                             #  12    0xda4a2  5      OPC=movl_r32_m32    
  testl %r8d, %r8d                                        #  13    0xda4a7  3      OPC=testl_r32_r32   
  js .L_da4e0                                             #  14    0xda4aa  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xda4ac  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xda4ae  1      OPC=nop             
  nop                                                     #  17    0xda4af  1      OPC=nop             
  nop                                                     #  18    0xda4b0  1      OPC=nop             
  nop                                                     #  19    0xda4b1  1      OPC=nop             
  nop                                                     #  20    0xda4b2  1      OPC=nop             
  nop                                                     #  21    0xda4b3  1      OPC=nop             
  nop                                                     #  22    0xda4b4  1      OPC=nop             
  nop                                                     #  23    0xda4b5  1      OPC=nop             
  nop                                                     #  24    0xda4b6  1      OPC=nop             
  nop                                                     #  25    0xda4b7  1      OPC=nop             
  nop                                                     #  26    0xda4b8  1      OPC=nop             
  nop                                                     #  27    0xda4b9  1      OPC=nop             
  nop                                                     #  28    0xda4ba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xda4bb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  30    0xda4c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  31    0xda4c2  4      OPC=movl_r32_m32    
  nop                                                     #  32    0xda4c6  1      OPC=nop             
  nop                                                     #  33    0xda4c7  1      OPC=nop             
  nop                                                     #  34    0xda4c8  1      OPC=nop             
  nop                                                     #  35    0xda4c9  1      OPC=nop             
  nop                                                     #  36    0xda4ca  1      OPC=nop             
  nop                                                     #  37    0xda4cb  1      OPC=nop             
  nop                                                     #  38    0xda4cc  1      OPC=nop             
  nop                                                     #  39    0xda4cd  1      OPC=nop             
  nop                                                     #  40    0xda4ce  1      OPC=nop             
  nop                                                     #  41    0xda4cf  1      OPC=nop             
  nop                                                     #  42    0xda4d0  1      OPC=nop             
  nop                                                     #  43    0xda4d1  1      OPC=nop             
  nop                                                     #  44    0xda4d2  1      OPC=nop             
  nop                                                     #  45    0xda4d3  1      OPC=nop             
  nop                                                     #  46    0xda4d4  1      OPC=nop             
  nop                                                     #  47    0xda4d5  1      OPC=nop             
  nop                                                     #  48    0xda4d6  1      OPC=nop             
  nop                                                     #  49    0xda4d7  1      OPC=nop             
  nop                                                     #  50    0xda4d8  1      OPC=nop             
  nop                                                     #  51    0xda4d9  1      OPC=nop             
  nop                                                     #  52    0xda4da  1      OPC=nop             
  nop                                                     #  53    0xda4db  1      OPC=nop             
  nop                                                     #  54    0xda4dc  1      OPC=nop             
  nop                                                     #  55    0xda4dd  1      OPC=nop             
  nop                                                     #  56    0xda4de  1      OPC=nop             
  nop                                                     #  57    0xda4df  1      OPC=nop             
.L_da4e0:                                                 #        0xda4e0  0      OPC=<label>         
  movl %r12d, %r12d                                       #  58    0xda4e0  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                #  59    0xda4e3  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                    #  60    0xda4e7  5      OPC=movq_r64_m64    
  movl %r12d, %eax                                        #  61    0xda4ec  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                   #  62    0xda4ef  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  63    0xda4f4  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  64    0xda4f7  3      OPC=addq_r64_r64    
  popq %r11                                               #  65    0xda4fa  2      OPC=popq_r64_1      
  nop                                                     #  66    0xda4fc  1      OPC=nop             
  nop                                                     #  67    0xda4fd  1      OPC=nop             
  nop                                                     #  68    0xda4fe  1      OPC=nop             
  nop                                                     #  69    0xda4ff  1      OPC=nop             
  andl $0xffffffe0, %r11d                                 #  70    0xda500  7      OPC=andl_r32_imm32  
  nop                                                     #  71    0xda507  1      OPC=nop             
  nop                                                     #  72    0xda508  1      OPC=nop             
  nop                                                     #  73    0xda509  1      OPC=nop             
  nop                                                     #  74    0xda50a  1      OPC=nop             
  addq %r15, %r11                                         #  75    0xda50b  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  76    0xda50e  3      OPC=jmpq_r64        
  nop                                                     #  77    0xda511  1      OPC=nop             
  nop                                                     #  78    0xda512  1      OPC=nop             
  nop                                                     #  79    0xda513  1      OPC=nop             
  nop                                                     #  80    0xda514  1      OPC=nop             
  nop                                                     #  81    0xda515  1      OPC=nop             
  nop                                                     #  82    0xda516  1      OPC=nop             
  nop                                                     #  83    0xda517  1      OPC=nop             
  nop                                                     #  84    0xda518  1      OPC=nop             
  nop                                                     #  85    0xda519  1      OPC=nop             
  nop                                                     #  86    0xda51a  1      OPC=nop             
  nop                                                     #  87    0xda51b  1      OPC=nop             
  nop                                                     #  88    0xda51c  1      OPC=nop             
  nop                                                     #  89    0xda51d  1      OPC=nop             
  nop                                                     #  90    0xda51e  1      OPC=nop             
  nop                                                     #  91    0xda51f  1      OPC=nop             
  nop                                                     #  92    0xda520  1      OPC=nop             
  nop                                                     #  93    0xda521  1      OPC=nop             
  nop                                                     #  94    0xda522  1      OPC=nop             
  nop                                                     #  95    0xda523  1      OPC=nop             
  nop                                                     #  96    0xda524  1      OPC=nop             
  nop                                                     #  97    0xda525  1      OPC=nop             
  nop                                                     #  98    0xda526  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNSbIwSt11char_traitsIwESaIwEE4rendEv

