  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x133660
#! rip-offset  0xf3660
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv:                  #        0xf3660  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf3660  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf3661  2      OPC=movl_r32_r32    
  leal 0xc(%rbx), %edi                                               #  3     0xf3663  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf3666  1      OPC=nop             
  nop                                                                #  5     0xf3667  1      OPC=nop             
  nop                                                                #  6     0xf3668  1      OPC=nop             
  nop                                                                #  7     0xf3669  1      OPC=nop             
  nop                                                                #  8     0xf366a  1      OPC=nop             
  nop                                                                #  9     0xf366b  1      OPC=nop             
  nop                                                                #  10    0xf366c  1      OPC=nop             
  nop                                                                #  11    0xf366d  1      OPC=nop             
  nop                                                                #  12    0xf366e  1      OPC=nop             
  nop                                                                #  13    0xf366f  1      OPC=nop             
  nop                                                                #  14    0xf3670  1      OPC=nop             
  nop                                                                #  15    0xf3671  1      OPC=nop             
  nop                                                                #  16    0xf3672  1      OPC=nop             
  nop                                                                #  17    0xf3673  1      OPC=nop             
  nop                                                                #  18    0xf3674  1      OPC=nop             
  nop                                                                #  19    0xf3675  1      OPC=nop             
  nop                                                                #  20    0xf3676  1      OPC=nop             
  nop                                                                #  21    0xf3677  1      OPC=nop             
  nop                                                                #  22    0xf3678  1      OPC=nop             
  nop                                                                #  23    0xf3679  1      OPC=nop             
  nop                                                                #  24    0xf367a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf367b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf3680  2      OPC=testl_r32_r32   
  je .L_f36a0                                                        #  27    0xf3682  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf3684  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf3685  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf3687  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf368e  1      OPC=nop             
  nop                                                                #  32    0xf368f  1      OPC=nop             
  nop                                                                #  33    0xf3690  1      OPC=nop             
  nop                                                                #  34    0xf3691  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf3692  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf3695  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf3698  1      OPC=nop             
  nop                                                                #  38    0xf3699  1      OPC=nop             
  nop                                                                #  39    0xf369a  1      OPC=nop             
  nop                                                                #  40    0xf369b  1      OPC=nop             
  nop                                                                #  41    0xf369c  1      OPC=nop             
  nop                                                                #  42    0xf369d  1      OPC=nop             
  nop                                                                #  43    0xf369e  1      OPC=nop             
  nop                                                                #  44    0xf369f  1      OPC=nop             
  nop                                                                #  45    0xf36a0  1      OPC=nop             
  nop                                                                #  46    0xf36a1  1      OPC=nop             
  nop                                                                #  47    0xf36a2  1      OPC=nop             
  nop                                                                #  48    0xf36a3  1      OPC=nop             
  nop                                                                #  49    0xf36a4  1      OPC=nop             
  nop                                                                #  50    0xf36a5  1      OPC=nop             
  nop                                                                #  51    0xf36a6  1      OPC=nop             
.L_f36a0:                                                            #        0xf36a7  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf36a7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf36a9  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf36ad  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf36b0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf36b2  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf36b6  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf36b8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf36ba  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf36bf  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf36c0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf36c3  1      OPC=nop             
  nop                                                                #  63    0xf36c4  1      OPC=nop             
  nop                                                                #  64    0xf36c5  1      OPC=nop             
  nop                                                                #  65    0xf36c6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf36c7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf36cc  1      OPC=nop             
  nop                                                                #  68    0xf36cd  1      OPC=nop             
  nop                                                                #  69    0xf36ce  1      OPC=nop             
  nop                                                                #  70    0xf36cf  1      OPC=nop             
  nop                                                                #  71    0xf36d0  1      OPC=nop             
  nop                                                                #  72    0xf36d1  1      OPC=nop             
  nop                                                                #  73    0xf36d2  1      OPC=nop             
  nop                                                                #  74    0xf36d3  1      OPC=nop             
  nop                                                                #  75    0xf36d4  1      OPC=nop             
  nop                                                                #  76    0xf36d5  1      OPC=nop             
  nop                                                                #  77    0xf36d6  1      OPC=nop             
  nop                                                                #  78    0xf36d7  1      OPC=nop             
  nop                                                                #  79    0xf36d8  1      OPC=nop             
  nop                                                                #  80    0xf36d9  1      OPC=nop             
  nop                                                                #  81    0xf36da  1      OPC=nop             
  nop                                                                #  82    0xf36db  1      OPC=nop             
  nop                                                                #  83    0xf36dc  1      OPC=nop             
  nop                                                                #  84    0xf36dd  1      OPC=nop             
  nop                                                                #  85    0xf36de  1      OPC=nop             
  nop                                                                #  86    0xf36df  1      OPC=nop             
  nop                                                                #  87    0xf36e0  1      OPC=nop             
  nop                                                                #  88    0xf36e1  1      OPC=nop             
  nop                                                                #  89    0xf36e2  1      OPC=nop             
  nop                                                                #  90    0xf36e3  1      OPC=nop             
  nop                                                                #  91    0xf36e4  1      OPC=nop             
  nop                                                                #  92    0xf36e5  1      OPC=nop             
  nop                                                                #  93    0xf36e6  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv

