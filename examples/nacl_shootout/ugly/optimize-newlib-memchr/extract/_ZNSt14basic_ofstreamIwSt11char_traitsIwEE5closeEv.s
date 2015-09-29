  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x1336e0
#! rip-offset  0xf36e0
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf36e0  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf36e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf36e1  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi                                               #  3     0xf36e3  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf36e6  1      OPC=nop             
  nop                                                                #  5     0xf36e7  1      OPC=nop             
  nop                                                                #  6     0xf36e8  1      OPC=nop             
  nop                                                                #  7     0xf36e9  1      OPC=nop             
  nop                                                                #  8     0xf36ea  1      OPC=nop             
  nop                                                                #  9     0xf36eb  1      OPC=nop             
  nop                                                                #  10    0xf36ec  1      OPC=nop             
  nop                                                                #  11    0xf36ed  1      OPC=nop             
  nop                                                                #  12    0xf36ee  1      OPC=nop             
  nop                                                                #  13    0xf36ef  1      OPC=nop             
  nop                                                                #  14    0xf36f0  1      OPC=nop             
  nop                                                                #  15    0xf36f1  1      OPC=nop             
  nop                                                                #  16    0xf36f2  1      OPC=nop             
  nop                                                                #  17    0xf36f3  1      OPC=nop             
  nop                                                                #  18    0xf36f4  1      OPC=nop             
  nop                                                                #  19    0xf36f5  1      OPC=nop             
  nop                                                                #  20    0xf36f6  1      OPC=nop             
  nop                                                                #  21    0xf36f7  1      OPC=nop             
  nop                                                                #  22    0xf36f8  1      OPC=nop             
  nop                                                                #  23    0xf36f9  1      OPC=nop             
  nop                                                                #  24    0xf36fa  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf36fb  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf3700  2      OPC=testl_r32_r32   
  je .L_f3720                                                        #  27    0xf3702  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf3704  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf3705  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf3707  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf370e  1      OPC=nop             
  nop                                                                #  32    0xf370f  1      OPC=nop             
  nop                                                                #  33    0xf3710  1      OPC=nop             
  nop                                                                #  34    0xf3711  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf3712  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf3715  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf3718  1      OPC=nop             
  nop                                                                #  38    0xf3719  1      OPC=nop             
  nop                                                                #  39    0xf371a  1      OPC=nop             
  nop                                                                #  40    0xf371b  1      OPC=nop             
  nop                                                                #  41    0xf371c  1      OPC=nop             
  nop                                                                #  42    0xf371d  1      OPC=nop             
  nop                                                                #  43    0xf371e  1      OPC=nop             
  nop                                                                #  44    0xf371f  1      OPC=nop             
  nop                                                                #  45    0xf3720  1      OPC=nop             
  nop                                                                #  46    0xf3721  1      OPC=nop             
  nop                                                                #  47    0xf3722  1      OPC=nop             
  nop                                                                #  48    0xf3723  1      OPC=nop             
  nop                                                                #  49    0xf3724  1      OPC=nop             
  nop                                                                #  50    0xf3725  1      OPC=nop             
  nop                                                                #  51    0xf3726  1      OPC=nop             
.L_f3720:                                                            #        0xf3727  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf3727  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf3729  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf372d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf3730  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf3732  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf3736  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf3738  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf373a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf373f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf3740  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf3743  1      OPC=nop             
  nop                                                                #  63    0xf3744  1      OPC=nop             
  nop                                                                #  64    0xf3745  1      OPC=nop             
  nop                                                                #  65    0xf3746  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf3747  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf374c  1      OPC=nop             
  nop                                                                #  68    0xf374d  1      OPC=nop             
  nop                                                                #  69    0xf374e  1      OPC=nop             
  nop                                                                #  70    0xf374f  1      OPC=nop             
  nop                                                                #  71    0xf3750  1      OPC=nop             
  nop                                                                #  72    0xf3751  1      OPC=nop             
  nop                                                                #  73    0xf3752  1      OPC=nop             
  nop                                                                #  74    0xf3753  1      OPC=nop             
  nop                                                                #  75    0xf3754  1      OPC=nop             
  nop                                                                #  76    0xf3755  1      OPC=nop             
  nop                                                                #  77    0xf3756  1      OPC=nop             
  nop                                                                #  78    0xf3757  1      OPC=nop             
  nop                                                                #  79    0xf3758  1      OPC=nop             
  nop                                                                #  80    0xf3759  1      OPC=nop             
  nop                                                                #  81    0xf375a  1      OPC=nop             
  nop                                                                #  82    0xf375b  1      OPC=nop             
  nop                                                                #  83    0xf375c  1      OPC=nop             
  nop                                                                #  84    0xf375d  1      OPC=nop             
  nop                                                                #  85    0xf375e  1      OPC=nop             
  nop                                                                #  86    0xf375f  1      OPC=nop             
  nop                                                                #  87    0xf3760  1      OPC=nop             
  nop                                                                #  88    0xf3761  1      OPC=nop             
  nop                                                                #  89    0xf3762  1      OPC=nop             
  nop                                                                #  90    0xf3763  1      OPC=nop             
  nop                                                                #  91    0xf3764  1      OPC=nop             
  nop                                                                #  92    0xf3765  1      OPC=nop             
  nop                                                                #  93    0xf3766  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv

