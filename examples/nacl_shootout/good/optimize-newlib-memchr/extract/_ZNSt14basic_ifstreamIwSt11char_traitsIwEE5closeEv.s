  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x133760
#! rip-offset  0xf3760
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf3760  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf3760  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf3761  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                               #  3     0xf3763  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf3766  1      OPC=nop             
  nop                                                                #  5     0xf3767  1      OPC=nop             
  nop                                                                #  6     0xf3768  1      OPC=nop             
  nop                                                                #  7     0xf3769  1      OPC=nop             
  nop                                                                #  8     0xf376a  1      OPC=nop             
  nop                                                                #  9     0xf376b  1      OPC=nop             
  nop                                                                #  10    0xf376c  1      OPC=nop             
  nop                                                                #  11    0xf376d  1      OPC=nop             
  nop                                                                #  12    0xf376e  1      OPC=nop             
  nop                                                                #  13    0xf376f  1      OPC=nop             
  nop                                                                #  14    0xf3770  1      OPC=nop             
  nop                                                                #  15    0xf3771  1      OPC=nop             
  nop                                                                #  16    0xf3772  1      OPC=nop             
  nop                                                                #  17    0xf3773  1      OPC=nop             
  nop                                                                #  18    0xf3774  1      OPC=nop             
  nop                                                                #  19    0xf3775  1      OPC=nop             
  nop                                                                #  20    0xf3776  1      OPC=nop             
  nop                                                                #  21    0xf3777  1      OPC=nop             
  nop                                                                #  22    0xf3778  1      OPC=nop             
  nop                                                                #  23    0xf3779  1      OPC=nop             
  nop                                                                #  24    0xf377a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf377b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf3780  2      OPC=testl_r32_r32   
  je .L_f37a0                                                        #  27    0xf3782  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf3784  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf3785  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf3787  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf378e  1      OPC=nop             
  nop                                                                #  32    0xf378f  1      OPC=nop             
  nop                                                                #  33    0xf3790  1      OPC=nop             
  nop                                                                #  34    0xf3791  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf3792  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf3795  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf3798  1      OPC=nop             
  nop                                                                #  38    0xf3799  1      OPC=nop             
  nop                                                                #  39    0xf379a  1      OPC=nop             
  nop                                                                #  40    0xf379b  1      OPC=nop             
  nop                                                                #  41    0xf379c  1      OPC=nop             
  nop                                                                #  42    0xf379d  1      OPC=nop             
  nop                                                                #  43    0xf379e  1      OPC=nop             
  nop                                                                #  44    0xf379f  1      OPC=nop             
  nop                                                                #  45    0xf37a0  1      OPC=nop             
  nop                                                                #  46    0xf37a1  1      OPC=nop             
  nop                                                                #  47    0xf37a2  1      OPC=nop             
  nop                                                                #  48    0xf37a3  1      OPC=nop             
  nop                                                                #  49    0xf37a4  1      OPC=nop             
  nop                                                                #  50    0xf37a5  1      OPC=nop             
  nop                                                                #  51    0xf37a6  1      OPC=nop             
.L_f37a0:                                                            #        0xf37a7  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf37a7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf37a9  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf37ad  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf37b0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf37b2  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf37b6  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf37b8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf37ba  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf37bf  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf37c0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf37c3  1      OPC=nop             
  nop                                                                #  63    0xf37c4  1      OPC=nop             
  nop                                                                #  64    0xf37c5  1      OPC=nop             
  nop                                                                #  65    0xf37c6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf37c7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf37cc  1      OPC=nop             
  nop                                                                #  68    0xf37cd  1      OPC=nop             
  nop                                                                #  69    0xf37ce  1      OPC=nop             
  nop                                                                #  70    0xf37cf  1      OPC=nop             
  nop                                                                #  71    0xf37d0  1      OPC=nop             
  nop                                                                #  72    0xf37d1  1      OPC=nop             
  nop                                                                #  73    0xf37d2  1      OPC=nop             
  nop                                                                #  74    0xf37d3  1      OPC=nop             
  nop                                                                #  75    0xf37d4  1      OPC=nop             
  nop                                                                #  76    0xf37d5  1      OPC=nop             
  nop                                                                #  77    0xf37d6  1      OPC=nop             
  nop                                                                #  78    0xf37d7  1      OPC=nop             
  nop                                                                #  79    0xf37d8  1      OPC=nop             
  nop                                                                #  80    0xf37d9  1      OPC=nop             
  nop                                                                #  81    0xf37da  1      OPC=nop             
  nop                                                                #  82    0xf37db  1      OPC=nop             
  nop                                                                #  83    0xf37dc  1      OPC=nop             
  nop                                                                #  84    0xf37dd  1      OPC=nop             
  nop                                                                #  85    0xf37de  1      OPC=nop             
  nop                                                                #  86    0xf37df  1      OPC=nop             
  nop                                                                #  87    0xf37e0  1      OPC=nop             
  nop                                                                #  88    0xf37e1  1      OPC=nop             
  nop                                                                #  89    0xf37e2  1      OPC=nop             
  nop                                                                #  90    0xf37e3  1      OPC=nop             
  nop                                                                #  91    0xf37e4  1      OPC=nop             
  nop                                                                #  92    0xf37e5  1      OPC=nop             
  nop                                                                #  93    0xf37e6  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv

