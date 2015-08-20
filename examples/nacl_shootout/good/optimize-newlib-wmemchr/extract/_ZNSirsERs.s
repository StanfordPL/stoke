  .text
  .globl _ZNSirsERs
  .type _ZNSirsERs, @function

#! file-offset 0xb06e0
#! rip-offset  0x706e0
#! capacity    192 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZNSirsERs:                                                          #        0x706e0  0      OPC=<label>         
  pushq %r12                                                          #  1     0x706e0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                                    #  2     0x706e2  3      OPC=movl_r32_r32    
  pushq %rbx                                                          #  3     0x706e5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                     #  4     0x706e6  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                     #  5     0x706e8  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                    #  6     0x706ea  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                     #  7     0x706ed  3      OPC=addq_r64_r64    
  leal 0xc(%rsp), %esi                                                #  8     0x706f0  4      OPC=leal_r32_m16    
  nop                                                                 #  9     0x706f4  1      OPC=nop             
  nop                                                                 #  10    0x706f5  1      OPC=nop             
  nop                                                                 #  11    0x706f6  1      OPC=nop             
  nop                                                                 #  12    0x706f7  1      OPC=nop             
  nop                                                                 #  13    0x706f8  1      OPC=nop             
  nop                                                                 #  14    0x706f9  1      OPC=nop             
  nop                                                                 #  15    0x706fa  1      OPC=nop             
  callq ._ZNSi10_M_extractIlEERSiRT_                                  #  16    0x706fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  17    0x70700  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                            #  18    0x70702  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                     #  19    0x70706  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                     #  20    0x70709  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                            #  21    0x7070b  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                     #  22    0x7070f  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                     #  23    0x70711  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                        #  24    0x70713  5      OPC=movl_r32_m32    
  testb $0x5, %sil                                                    #  25    0x70718  4      OPC=testb_r8_imm8   
  nop                                                                 #  26    0x7071c  1      OPC=nop             
  nop                                                                 #  27    0x7071d  1      OPC=nop             
  nop                                                                 #  28    0x7071e  1      OPC=nop             
  nop                                                                 #  29    0x7071f  1      OPC=nop             
  jne .L_70740                                                        #  30    0x70720  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                #  31    0x70722  4      OPC=movl_r32_m32    
  leal 0x8000(%rax), %edx                                             #  32    0x70726  6      OPC=leal_r32_m16    
  cmpl $0xffff, %edx                                                  #  33    0x7072c  6      OPC=cmpl_r32_imm32  
  ja .L_70760                                                         #  34    0x70732  2      OPC=ja_label        
  movl %r12d, %r12d                                                   #  35    0x70734  3      OPC=movl_r32_r32    
  movw %ax, (%r15,%r12,1)                                             #  36    0x70737  5      OPC=movw_m16_r16    
  nop                                                                 #  37    0x7073c  1      OPC=nop             
  nop                                                                 #  38    0x7073d  1      OPC=nop             
  nop                                                                 #  39    0x7073e  1      OPC=nop             
  nop                                                                 #  40    0x7073f  1      OPC=nop             
.L_70740:                                                             #        0x70740  0      OPC=<label>         
  addl $0x18, %esp                                                    #  41    0x70740  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  42    0x70743  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                     #  43    0x70746  2      OPC=movl_r32_r32    
  popq %rbx                                                           #  44    0x70748  1      OPC=popq_r64_1      
  popq %r12                                                           #  45    0x70749  2      OPC=popq_r64_1      
  popq %r11                                                           #  46    0x7074b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  47    0x7074d  7      OPC=andl_r32_imm32  
  nop                                                                 #  48    0x70754  1      OPC=nop             
  nop                                                                 #  49    0x70755  1      OPC=nop             
  nop                                                                 #  50    0x70756  1      OPC=nop             
  nop                                                                 #  51    0x70757  1      OPC=nop             
  addq %r15, %r11                                                     #  52    0x70758  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  53    0x7075b  3      OPC=jmpq_r64        
  nop                                                                 #  54    0x7075e  1      OPC=nop             
  nop                                                                 #  55    0x7075f  1      OPC=nop             
  nop                                                                 #  56    0x70760  1      OPC=nop             
  nop                                                                 #  57    0x70761  1      OPC=nop             
  nop                                                                 #  58    0x70762  1      OPC=nop             
  nop                                                                 #  59    0x70763  1      OPC=nop             
  nop                                                                 #  60    0x70764  1      OPC=nop             
  nop                                                                 #  61    0x70765  1      OPC=nop             
  nop                                                                 #  62    0x70766  1      OPC=nop             
.L_70760:                                                             #        0x70767  0      OPC=<label>         
  orl $0x4, %esi                                                      #  63    0x70767  3      OPC=orl_r32_imm8    
  nop                                                                 #  64    0x7076a  1      OPC=nop             
  nop                                                                 #  65    0x7076b  1      OPC=nop             
  nop                                                                 #  66    0x7076c  1      OPC=nop             
  nop                                                                 #  67    0x7076d  1      OPC=nop             
  nop                                                                 #  68    0x7076e  1      OPC=nop             
  nop                                                                 #  69    0x7076f  1      OPC=nop             
  nop                                                                 #  70    0x70770  1      OPC=nop             
  nop                                                                 #  71    0x70771  1      OPC=nop             
  nop                                                                 #  72    0x70772  1      OPC=nop             
  nop                                                                 #  73    0x70773  1      OPC=nop             
  nop                                                                 #  74    0x70774  1      OPC=nop             
  nop                                                                 #  75    0x70775  1      OPC=nop             
  nop                                                                 #  76    0x70776  1      OPC=nop             
  nop                                                                 #  77    0x70777  1      OPC=nop             
  nop                                                                 #  78    0x70778  1      OPC=nop             
  nop                                                                 #  79    0x70779  1      OPC=nop             
  nop                                                                 #  80    0x7077a  1      OPC=nop             
  nop                                                                 #  81    0x7077b  1      OPC=nop             
  nop                                                                 #  82    0x7077c  1      OPC=nop             
  nop                                                                 #  83    0x7077d  1      OPC=nop             
  nop                                                                 #  84    0x7077e  1      OPC=nop             
  nop                                                                 #  85    0x7077f  1      OPC=nop             
  nop                                                                 #  86    0x70780  1      OPC=nop             
  nop                                                                 #  87    0x70781  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  88    0x70782  5      OPC=callq_label     
  addl $0x18, %esp                                                    #  89    0x70787  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  90    0x7078a  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                     #  91    0x7078d  2      OPC=movl_r32_r32    
  popq %rbx                                                           #  92    0x7078f  1      OPC=popq_r64_1      
  popq %r12                                                           #  93    0x70790  2      OPC=popq_r64_1      
  popq %r11                                                           #  94    0x70792  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  95    0x70794  7      OPC=andl_r32_imm32  
  nop                                                                 #  96    0x7079b  1      OPC=nop             
  nop                                                                 #  97    0x7079c  1      OPC=nop             
  nop                                                                 #  98    0x7079d  1      OPC=nop             
  nop                                                                 #  99    0x7079e  1      OPC=nop             
  addq %r15, %r11                                                     #  100   0x7079f  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  101   0x707a2  3      OPC=jmpq_r64        
  nop                                                                 #  102   0x707a5  1      OPC=nop             
  nop                                                                 #  103   0x707a6  1      OPC=nop             
  nop                                                                 #  104   0x707a7  1      OPC=nop             
  nop                                                                 #  105   0x707a8  1      OPC=nop             
  nop                                                                 #  106   0x707a9  1      OPC=nop             
  nop                                                                 #  107   0x707aa  1      OPC=nop             
  nop                                                                 #  108   0x707ab  1      OPC=nop             
  nop                                                                 #  109   0x707ac  1      OPC=nop             
  nop                                                                 #  110   0x707ad  1      OPC=nop             
                                                                                                                   
.size _ZNSirsERs, .-_ZNSirsERs

