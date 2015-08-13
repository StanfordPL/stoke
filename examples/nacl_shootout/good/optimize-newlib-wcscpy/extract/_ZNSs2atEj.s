  .text
  .globl _ZNSs2atEj
  .type _ZNSs2atEj, @function

#! file-offset 0xeeac0
#! rip-offset  0xaeac0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs2atEj:                            #        0xaeac0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                #  1     0xaeac0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                       #  2     0xaeac5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                 #  3     0xaeac7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                      #  4     0xaeacc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  5     0xaeacf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                       #  6     0xaead2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  7     0xaead4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                      #  8     0xaead8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                 #  9     0xaeadb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                        #  10    0xaeade  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                       #  11    0xaeae0  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi              #  12    0xaeae2  4      OPC=cmpl_r32_m32    
  jae .L_aeb40                          #  13    0xaeae6  2      OPC=jae_label       
  movl %edx, %edx                       #  14    0xaeae8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d           #  15    0xaeaea  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                      #  16    0xaeaef  3      OPC=testl_r32_r32   
  js .L_aeb20                           #  17    0xaeaf2  2      OPC=js_label        
  movl %ebx, %edi                       #  18    0xaeaf4  2      OPC=movl_r32_r32    
  nop                                   #  19    0xaeaf6  1      OPC=nop             
  nop                                   #  20    0xaeaf7  1      OPC=nop             
  nop                                   #  21    0xaeaf8  1      OPC=nop             
  nop                                   #  22    0xaeaf9  1      OPC=nop             
  nop                                   #  23    0xaeafa  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv          #  24    0xaeafb  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xaeb00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  26    0xaeb02  4      OPC=movl_r32_m32    
  nop                                   #  27    0xaeb06  1      OPC=nop             
  nop                                   #  28    0xaeb07  1      OPC=nop             
  nop                                   #  29    0xaeb08  1      OPC=nop             
  nop                                   #  30    0xaeb09  1      OPC=nop             
  nop                                   #  31    0xaeb0a  1      OPC=nop             
  nop                                   #  32    0xaeb0b  1      OPC=nop             
  nop                                   #  33    0xaeb0c  1      OPC=nop             
  nop                                   #  34    0xaeb0d  1      OPC=nop             
  nop                                   #  35    0xaeb0e  1      OPC=nop             
  nop                                   #  36    0xaeb0f  1      OPC=nop             
  nop                                   #  37    0xaeb10  1      OPC=nop             
  nop                                   #  38    0xaeb11  1      OPC=nop             
  nop                                   #  39    0xaeb12  1      OPC=nop             
  nop                                   #  40    0xaeb13  1      OPC=nop             
  nop                                   #  41    0xaeb14  1      OPC=nop             
  nop                                   #  42    0xaeb15  1      OPC=nop             
  nop                                   #  43    0xaeb16  1      OPC=nop             
  nop                                   #  44    0xaeb17  1      OPC=nop             
  nop                                   #  45    0xaeb18  1      OPC=nop             
  nop                                   #  46    0xaeb19  1      OPC=nop             
  nop                                   #  47    0xaeb1a  1      OPC=nop             
  nop                                   #  48    0xaeb1b  1      OPC=nop             
  nop                                   #  49    0xaeb1c  1      OPC=nop             
  nop                                   #  50    0xaeb1d  1      OPC=nop             
  nop                                   #  51    0xaeb1e  1      OPC=nop             
  nop                                   #  52    0xaeb1f  1      OPC=nop             
.L_aeb20:                               #        0xaeb20  0      OPC=<label>         
  leal (%r12,%rax,1), %eax              #  53    0xaeb20  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                  #  54    0xaeb24  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                 #  55    0xaeb29  5      OPC=movq_r64_m64    
  addl $0x18, %esp                      #  56    0xaeb2e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  57    0xaeb31  3      OPC=addq_r64_r64    
  popq %r11                             #  58    0xaeb34  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  59    0xaeb36  7      OPC=andl_r32_imm32  
  nop                                   #  60    0xaeb3d  1      OPC=nop             
  nop                                   #  61    0xaeb3e  1      OPC=nop             
  nop                                   #  62    0xaeb3f  1      OPC=nop             
  nop                                   #  63    0xaeb40  1      OPC=nop             
  addq %r15, %r11                       #  64    0xaeb41  3      OPC=addq_r64_r64    
  jmpq %r11                             #  65    0xaeb44  3      OPC=jmpq_r64        
.L_aeb40:                               #        0xaeb47  0      OPC=<label>         
  movl $0x1003baac, %edi                #  66    0xaeb47  5      OPC=movl_r32_imm32  
  nop                                   #  67    0xaeb4c  1      OPC=nop             
  nop                                   #  68    0xaeb4d  1      OPC=nop             
  nop                                   #  69    0xaeb4e  1      OPC=nop             
  nop                                   #  70    0xaeb4f  1      OPC=nop             
  nop                                   #  71    0xaeb50  1      OPC=nop             
  nop                                   #  72    0xaeb51  1      OPC=nop             
  nop                                   #  73    0xaeb52  1      OPC=nop             
  nop                                   #  74    0xaeb53  1      OPC=nop             
  nop                                   #  75    0xaeb54  1      OPC=nop             
  nop                                   #  76    0xaeb55  1      OPC=nop             
  nop                                   #  77    0xaeb56  1      OPC=nop             
  nop                                   #  78    0xaeb57  1      OPC=nop             
  nop                                   #  79    0xaeb58  1      OPC=nop             
  nop                                   #  80    0xaeb59  1      OPC=nop             
  nop                                   #  81    0xaeb5a  1      OPC=nop             
  nop                                   #  82    0xaeb5b  1      OPC=nop             
  nop                                   #  83    0xaeb5c  1      OPC=nop             
  nop                                   #  84    0xaeb5d  1      OPC=nop             
  nop                                   #  85    0xaeb5e  1      OPC=nop             
  nop                                   #  86    0xaeb5f  1      OPC=nop             
  nop                                   #  87    0xaeb60  1      OPC=nop             
  nop                                   #  88    0xaeb61  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  89    0xaeb62  5      OPC=callq_label     
                                                                                     
.size _ZNSs2atEj, .-_ZNSs2atEj

