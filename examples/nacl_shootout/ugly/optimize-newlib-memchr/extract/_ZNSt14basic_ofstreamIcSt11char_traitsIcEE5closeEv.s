  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x1324a0
#! rip-offset  0xf24a0
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf24a0  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf24a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf24a1  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi                                               #  3     0xf24a3  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf24a6  1      OPC=nop             
  nop                                                                #  5     0xf24a7  1      OPC=nop             
  nop                                                                #  6     0xf24a8  1      OPC=nop             
  nop                                                                #  7     0xf24a9  1      OPC=nop             
  nop                                                                #  8     0xf24aa  1      OPC=nop             
  nop                                                                #  9     0xf24ab  1      OPC=nop             
  nop                                                                #  10    0xf24ac  1      OPC=nop             
  nop                                                                #  11    0xf24ad  1      OPC=nop             
  nop                                                                #  12    0xf24ae  1      OPC=nop             
  nop                                                                #  13    0xf24af  1      OPC=nop             
  nop                                                                #  14    0xf24b0  1      OPC=nop             
  nop                                                                #  15    0xf24b1  1      OPC=nop             
  nop                                                                #  16    0xf24b2  1      OPC=nop             
  nop                                                                #  17    0xf24b3  1      OPC=nop             
  nop                                                                #  18    0xf24b4  1      OPC=nop             
  nop                                                                #  19    0xf24b5  1      OPC=nop             
  nop                                                                #  20    0xf24b6  1      OPC=nop             
  nop                                                                #  21    0xf24b7  1      OPC=nop             
  nop                                                                #  22    0xf24b8  1      OPC=nop             
  nop                                                                #  23    0xf24b9  1      OPC=nop             
  nop                                                                #  24    0xf24ba  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf24bb  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf24c0  2      OPC=testl_r32_r32   
  je .L_f24e0                                                        #  27    0xf24c2  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf24c4  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf24c5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf24c7  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf24ce  1      OPC=nop             
  nop                                                                #  32    0xf24cf  1      OPC=nop             
  nop                                                                #  33    0xf24d0  1      OPC=nop             
  nop                                                                #  34    0xf24d1  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf24d2  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf24d5  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf24d8  1      OPC=nop             
  nop                                                                #  38    0xf24d9  1      OPC=nop             
  nop                                                                #  39    0xf24da  1      OPC=nop             
  nop                                                                #  40    0xf24db  1      OPC=nop             
  nop                                                                #  41    0xf24dc  1      OPC=nop             
  nop                                                                #  42    0xf24dd  1      OPC=nop             
  nop                                                                #  43    0xf24de  1      OPC=nop             
  nop                                                                #  44    0xf24df  1      OPC=nop             
  nop                                                                #  45    0xf24e0  1      OPC=nop             
  nop                                                                #  46    0xf24e1  1      OPC=nop             
  nop                                                                #  47    0xf24e2  1      OPC=nop             
  nop                                                                #  48    0xf24e3  1      OPC=nop             
  nop                                                                #  49    0xf24e4  1      OPC=nop             
  nop                                                                #  50    0xf24e5  1      OPC=nop             
  nop                                                                #  51    0xf24e6  1      OPC=nop             
.L_f24e0:                                                            #        0xf24e7  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf24e7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf24e9  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf24ed  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf24f0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf24f2  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf24f6  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf24f8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf24fa  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf24ff  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf2500  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf2503  1      OPC=nop             
  nop                                                                #  63    0xf2504  1      OPC=nop             
  nop                                                                #  64    0xf2505  1      OPC=nop             
  nop                                                                #  65    0xf2506  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf2507  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf250c  1      OPC=nop             
  nop                                                                #  68    0xf250d  1      OPC=nop             
  nop                                                                #  69    0xf250e  1      OPC=nop             
  nop                                                                #  70    0xf250f  1      OPC=nop             
  nop                                                                #  71    0xf2510  1      OPC=nop             
  nop                                                                #  72    0xf2511  1      OPC=nop             
  nop                                                                #  73    0xf2512  1      OPC=nop             
  nop                                                                #  74    0xf2513  1      OPC=nop             
  nop                                                                #  75    0xf2514  1      OPC=nop             
  nop                                                                #  76    0xf2515  1      OPC=nop             
  nop                                                                #  77    0xf2516  1      OPC=nop             
  nop                                                                #  78    0xf2517  1      OPC=nop             
  nop                                                                #  79    0xf2518  1      OPC=nop             
  nop                                                                #  80    0xf2519  1      OPC=nop             
  nop                                                                #  81    0xf251a  1      OPC=nop             
  nop                                                                #  82    0xf251b  1      OPC=nop             
  nop                                                                #  83    0xf251c  1      OPC=nop             
  nop                                                                #  84    0xf251d  1      OPC=nop             
  nop                                                                #  85    0xf251e  1      OPC=nop             
  nop                                                                #  86    0xf251f  1      OPC=nop             
  nop                                                                #  87    0xf2520  1      OPC=nop             
  nop                                                                #  88    0xf2521  1      OPC=nop             
  nop                                                                #  89    0xf2522  1      OPC=nop             
  nop                                                                #  90    0xf2523  1      OPC=nop             
  nop                                                                #  91    0xf2524  1      OPC=nop             
  nop                                                                #  92    0xf2525  1      OPC=nop             
  nop                                                                #  93    0xf2526  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv

