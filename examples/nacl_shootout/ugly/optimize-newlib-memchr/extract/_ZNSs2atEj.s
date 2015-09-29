  .text
  .globl _ZNSs2atEj
  .type _ZNSs2atEj, @function

#! file-offset 0xef4e0
#! rip-offset  0xaf4e0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs2atEj:                            #        0xaf4e0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                #  1     0xaf4e0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                       #  2     0xaf4e5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                 #  3     0xaf4e7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                      #  4     0xaf4ec  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  5     0xaf4ef  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                       #  6     0xaf4f2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  7     0xaf4f4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                      #  8     0xaf4f8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                 #  9     0xaf4fb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                        #  10    0xaf4fe  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                       #  11    0xaf500  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi              #  12    0xaf502  4      OPC=cmpl_r32_m32    
  jae .L_af560                          #  13    0xaf506  2      OPC=jae_label       
  movl %edx, %edx                       #  14    0xaf508  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d           #  15    0xaf50a  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                      #  16    0xaf50f  3      OPC=testl_r32_r32   
  js .L_af540                           #  17    0xaf512  2      OPC=js_label        
  movl %ebx, %edi                       #  18    0xaf514  2      OPC=movl_r32_r32    
  nop                                   #  19    0xaf516  1      OPC=nop             
  nop                                   #  20    0xaf517  1      OPC=nop             
  nop                                   #  21    0xaf518  1      OPC=nop             
  nop                                   #  22    0xaf519  1      OPC=nop             
  nop                                   #  23    0xaf51a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv          #  24    0xaf51b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xaf520  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  26    0xaf522  4      OPC=movl_r32_m32    
  nop                                   #  27    0xaf526  1      OPC=nop             
  nop                                   #  28    0xaf527  1      OPC=nop             
  nop                                   #  29    0xaf528  1      OPC=nop             
  nop                                   #  30    0xaf529  1      OPC=nop             
  nop                                   #  31    0xaf52a  1      OPC=nop             
  nop                                   #  32    0xaf52b  1      OPC=nop             
  nop                                   #  33    0xaf52c  1      OPC=nop             
  nop                                   #  34    0xaf52d  1      OPC=nop             
  nop                                   #  35    0xaf52e  1      OPC=nop             
  nop                                   #  36    0xaf52f  1      OPC=nop             
  nop                                   #  37    0xaf530  1      OPC=nop             
  nop                                   #  38    0xaf531  1      OPC=nop             
  nop                                   #  39    0xaf532  1      OPC=nop             
  nop                                   #  40    0xaf533  1      OPC=nop             
  nop                                   #  41    0xaf534  1      OPC=nop             
  nop                                   #  42    0xaf535  1      OPC=nop             
  nop                                   #  43    0xaf536  1      OPC=nop             
  nop                                   #  44    0xaf537  1      OPC=nop             
  nop                                   #  45    0xaf538  1      OPC=nop             
  nop                                   #  46    0xaf539  1      OPC=nop             
  nop                                   #  47    0xaf53a  1      OPC=nop             
  nop                                   #  48    0xaf53b  1      OPC=nop             
  nop                                   #  49    0xaf53c  1      OPC=nop             
  nop                                   #  50    0xaf53d  1      OPC=nop             
  nop                                   #  51    0xaf53e  1      OPC=nop             
  nop                                   #  52    0xaf53f  1      OPC=nop             
.L_af540:                               #        0xaf540  0      OPC=<label>         
  leal (%r12,%rax,1), %eax              #  53    0xaf540  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                  #  54    0xaf544  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                 #  55    0xaf549  5      OPC=movq_r64_m64    
  addl $0x18, %esp                      #  56    0xaf54e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  57    0xaf551  3      OPC=addq_r64_r64    
  popq %r11                             #  58    0xaf554  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  59    0xaf556  7      OPC=andl_r32_imm32  
  nop                                   #  60    0xaf55d  1      OPC=nop             
  nop                                   #  61    0xaf55e  1      OPC=nop             
  nop                                   #  62    0xaf55f  1      OPC=nop             
  nop                                   #  63    0xaf560  1      OPC=nop             
  addq %r15, %r11                       #  64    0xaf561  3      OPC=addq_r64_r64    
  jmpq %r11                             #  65    0xaf564  3      OPC=jmpq_r64        
.L_af560:                               #        0xaf567  0      OPC=<label>         
  movl $0x1003baac, %edi                #  66    0xaf567  5      OPC=movl_r32_imm32  
  nop                                   #  67    0xaf56c  1      OPC=nop             
  nop                                   #  68    0xaf56d  1      OPC=nop             
  nop                                   #  69    0xaf56e  1      OPC=nop             
  nop                                   #  70    0xaf56f  1      OPC=nop             
  nop                                   #  71    0xaf570  1      OPC=nop             
  nop                                   #  72    0xaf571  1      OPC=nop             
  nop                                   #  73    0xaf572  1      OPC=nop             
  nop                                   #  74    0xaf573  1      OPC=nop             
  nop                                   #  75    0xaf574  1      OPC=nop             
  nop                                   #  76    0xaf575  1      OPC=nop             
  nop                                   #  77    0xaf576  1      OPC=nop             
  nop                                   #  78    0xaf577  1      OPC=nop             
  nop                                   #  79    0xaf578  1      OPC=nop             
  nop                                   #  80    0xaf579  1      OPC=nop             
  nop                                   #  81    0xaf57a  1      OPC=nop             
  nop                                   #  82    0xaf57b  1      OPC=nop             
  nop                                   #  83    0xaf57c  1      OPC=nop             
  nop                                   #  84    0xaf57d  1      OPC=nop             
  nop                                   #  85    0xaf57e  1      OPC=nop             
  nop                                   #  86    0xaf57f  1      OPC=nop             
  nop                                   #  87    0xaf580  1      OPC=nop             
  nop                                   #  88    0xaf581  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  89    0xaf582  5      OPC=callq_label     
                                                                                     
.size _ZNSs2atEj, .-_ZNSs2atEj

