  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x131a80
#! rip-offset  0xf1a80
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf1a80  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf1a80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf1a81  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi                                               #  3     0xf1a83  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf1a86  1      OPC=nop             
  nop                                                                #  5     0xf1a87  1      OPC=nop             
  nop                                                                #  6     0xf1a88  1      OPC=nop             
  nop                                                                #  7     0xf1a89  1      OPC=nop             
  nop                                                                #  8     0xf1a8a  1      OPC=nop             
  nop                                                                #  9     0xf1a8b  1      OPC=nop             
  nop                                                                #  10    0xf1a8c  1      OPC=nop             
  nop                                                                #  11    0xf1a8d  1      OPC=nop             
  nop                                                                #  12    0xf1a8e  1      OPC=nop             
  nop                                                                #  13    0xf1a8f  1      OPC=nop             
  nop                                                                #  14    0xf1a90  1      OPC=nop             
  nop                                                                #  15    0xf1a91  1      OPC=nop             
  nop                                                                #  16    0xf1a92  1      OPC=nop             
  nop                                                                #  17    0xf1a93  1      OPC=nop             
  nop                                                                #  18    0xf1a94  1      OPC=nop             
  nop                                                                #  19    0xf1a95  1      OPC=nop             
  nop                                                                #  20    0xf1a96  1      OPC=nop             
  nop                                                                #  21    0xf1a97  1      OPC=nop             
  nop                                                                #  22    0xf1a98  1      OPC=nop             
  nop                                                                #  23    0xf1a99  1      OPC=nop             
  nop                                                                #  24    0xf1a9a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf1a9b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf1aa0  2      OPC=testl_r32_r32   
  je .L_f1ac0                                                        #  27    0xf1aa2  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf1aa4  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf1aa5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf1aa7  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf1aae  1      OPC=nop             
  nop                                                                #  32    0xf1aaf  1      OPC=nop             
  nop                                                                #  33    0xf1ab0  1      OPC=nop             
  nop                                                                #  34    0xf1ab1  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf1ab2  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf1ab5  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf1ab8  1      OPC=nop             
  nop                                                                #  38    0xf1ab9  1      OPC=nop             
  nop                                                                #  39    0xf1aba  1      OPC=nop             
  nop                                                                #  40    0xf1abb  1      OPC=nop             
  nop                                                                #  41    0xf1abc  1      OPC=nop             
  nop                                                                #  42    0xf1abd  1      OPC=nop             
  nop                                                                #  43    0xf1abe  1      OPC=nop             
  nop                                                                #  44    0xf1abf  1      OPC=nop             
  nop                                                                #  45    0xf1ac0  1      OPC=nop             
  nop                                                                #  46    0xf1ac1  1      OPC=nop             
  nop                                                                #  47    0xf1ac2  1      OPC=nop             
  nop                                                                #  48    0xf1ac3  1      OPC=nop             
  nop                                                                #  49    0xf1ac4  1      OPC=nop             
  nop                                                                #  50    0xf1ac5  1      OPC=nop             
  nop                                                                #  51    0xf1ac6  1      OPC=nop             
.L_f1ac0:                                                            #        0xf1ac7  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf1ac7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf1ac9  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf1acd  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf1ad0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf1ad2  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf1ad6  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf1ad8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf1ada  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf1adf  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf1ae0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf1ae3  1      OPC=nop             
  nop                                                                #  63    0xf1ae4  1      OPC=nop             
  nop                                                                #  64    0xf1ae5  1      OPC=nop             
  nop                                                                #  65    0xf1ae6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf1ae7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf1aec  1      OPC=nop             
  nop                                                                #  68    0xf1aed  1      OPC=nop             
  nop                                                                #  69    0xf1aee  1      OPC=nop             
  nop                                                                #  70    0xf1aef  1      OPC=nop             
  nop                                                                #  71    0xf1af0  1      OPC=nop             
  nop                                                                #  72    0xf1af1  1      OPC=nop             
  nop                                                                #  73    0xf1af2  1      OPC=nop             
  nop                                                                #  74    0xf1af3  1      OPC=nop             
  nop                                                                #  75    0xf1af4  1      OPC=nop             
  nop                                                                #  76    0xf1af5  1      OPC=nop             
  nop                                                                #  77    0xf1af6  1      OPC=nop             
  nop                                                                #  78    0xf1af7  1      OPC=nop             
  nop                                                                #  79    0xf1af8  1      OPC=nop             
  nop                                                                #  80    0xf1af9  1      OPC=nop             
  nop                                                                #  81    0xf1afa  1      OPC=nop             
  nop                                                                #  82    0xf1afb  1      OPC=nop             
  nop                                                                #  83    0xf1afc  1      OPC=nop             
  nop                                                                #  84    0xf1afd  1      OPC=nop             
  nop                                                                #  85    0xf1afe  1      OPC=nop             
  nop                                                                #  86    0xf1aff  1      OPC=nop             
  nop                                                                #  87    0xf1b00  1      OPC=nop             
  nop                                                                #  88    0xf1b01  1      OPC=nop             
  nop                                                                #  89    0xf1b02  1      OPC=nop             
  nop                                                                #  90    0xf1b03  1      OPC=nop             
  nop                                                                #  91    0xf1b04  1      OPC=nop             
  nop                                                                #  92    0xf1b05  1      OPC=nop             
  nop                                                                #  93    0xf1b06  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv

