  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv, @function

#! file-offset 0x12cf40
#! rip-offset  0xecf40
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv:  #        0xecf40  0      OPC=<label>         
  subl $0x8, %esp                                      #  1     0xecf40  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  2     0xecf43  3      OPC=addq_r64_r64    
  addl $0x40, %edi                                     #  3     0xecf46  3      OPC=addl_r32_imm8   
  nop                                                  #  4     0xecf49  1      OPC=nop             
  nop                                                  #  5     0xecf4a  1      OPC=nop             
  nop                                                  #  6     0xecf4b  1      OPC=nop             
  nop                                                  #  7     0xecf4c  1      OPC=nop             
  nop                                                  #  8     0xecf4d  1      OPC=nop             
  nop                                                  #  9     0xecf4e  1      OPC=nop             
  nop                                                  #  10    0xecf4f  1      OPC=nop             
  nop                                                  #  11    0xecf50  1      OPC=nop             
  nop                                                  #  12    0xecf51  1      OPC=nop             
  nop                                                  #  13    0xecf52  1      OPC=nop             
  nop                                                  #  14    0xecf53  1      OPC=nop             
  nop                                                  #  15    0xecf54  1      OPC=nop             
  nop                                                  #  16    0xecf55  1      OPC=nop             
  nop                                                  #  17    0xecf56  1      OPC=nop             
  nop                                                  #  18    0xecf57  1      OPC=nop             
  nop                                                  #  19    0xecf58  1      OPC=nop             
  nop                                                  #  20    0xecf59  1      OPC=nop             
  nop                                                  #  21    0xecf5a  1      OPC=nop             
  callq ._ZNKSt12__basic_fileIcE7is_openEv             #  22    0xecf5b  5      OPC=callq_label     
  addl $0x8, %esp                                      #  23    0xecf60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  24    0xecf63  3      OPC=addq_r64_r64    
  popq %r11                                            #  25    0xecf66  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  26    0xecf68  7      OPC=andl_r32_imm32  
  nop                                                  #  27    0xecf6f  1      OPC=nop             
  nop                                                  #  28    0xecf70  1      OPC=nop             
  nop                                                  #  29    0xecf71  1      OPC=nop             
  nop                                                  #  30    0xecf72  1      OPC=nop             
  addq %r15, %r11                                      #  31    0xecf73  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  32    0xecf76  3      OPC=jmpq_r64        
  nop                                                  #  33    0xecf79  1      OPC=nop             
  nop                                                  #  34    0xecf7a  1      OPC=nop             
  nop                                                  #  35    0xecf7b  1      OPC=nop             
  nop                                                  #  36    0xecf7c  1      OPC=nop             
  nop                                                  #  37    0xecf7d  1      OPC=nop             
  nop                                                  #  38    0xecf7e  1      OPC=nop             
  nop                                                  #  39    0xecf7f  1      OPC=nop             
  nop                                                  #  40    0xecf80  1      OPC=nop             
  nop                                                  #  41    0xecf81  1      OPC=nop             
  nop                                                  #  42    0xecf82  1      OPC=nop             
  nop                                                  #  43    0xecf83  1      OPC=nop             
  nop                                                  #  44    0xecf84  1      OPC=nop             
  nop                                                  #  45    0xecf85  1      OPC=nop             
  nop                                                  #  46    0xecf86  1      OPC=nop             
  cmpq $0xff, %rdx                                     #  47    0xecf87  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                      #  48    0xecf8b  2      OPC=movl_r32_r32    
  je .L_ecfa0                                          #  49    0xecf8d  2      OPC=je_label        
  nop                                                  #  50    0xecf8f  1      OPC=nop             
  nop                                                  #  51    0xecf90  1      OPC=nop             
  nop                                                  #  52    0xecf91  1      OPC=nop             
  nop                                                  #  53    0xecf92  1      OPC=nop             
  nop                                                  #  54    0xecf93  1      OPC=nop             
  nop                                                  #  55    0xecf94  1      OPC=nop             
  nop                                                  #  56    0xecf95  1      OPC=nop             
  nop                                                  #  57    0xecf96  1      OPC=nop             
  nop                                                  #  58    0xecf97  1      OPC=nop             
  nop                                                  #  59    0xecf98  1      OPC=nop             
  nop                                                  #  60    0xecf99  1      OPC=nop             
  nop                                                  #  61    0xecf9a  1      OPC=nop             
  nop                                                  #  62    0xecf9b  1      OPC=nop             
  nop                                                  #  63    0xecf9c  1      OPC=nop             
  nop                                                  #  64    0xecf9d  1      OPC=nop             
  nop                                                  #  65    0xecf9e  1      OPC=nop             
  nop                                                  #  66    0xecf9f  1      OPC=nop             
  nop                                                  #  67    0xecfa0  1      OPC=nop             
  nop                                                  #  68    0xecfa1  1      OPC=nop             
  callq ._Unwind_Resume                                #  69    0xecfa2  5      OPC=callq_label     
.L_ecfa0:                                              #        0xecfa7  0      OPC=<label>         
  nop                                                  #  70    0xecfa7  1      OPC=nop             
  nop                                                  #  71    0xecfa8  1      OPC=nop             
  nop                                                  #  72    0xecfa9  1      OPC=nop             
  nop                                                  #  73    0xecfaa  1      OPC=nop             
  nop                                                  #  74    0xecfab  1      OPC=nop             
  nop                                                  #  75    0xecfac  1      OPC=nop             
  nop                                                  #  76    0xecfad  1      OPC=nop             
  nop                                                  #  77    0xecfae  1      OPC=nop             
  nop                                                  #  78    0xecfaf  1      OPC=nop             
  nop                                                  #  79    0xecfb0  1      OPC=nop             
  nop                                                  #  80    0xecfb1  1      OPC=nop             
  nop                                                  #  81    0xecfb2  1      OPC=nop             
  nop                                                  #  82    0xecfb3  1      OPC=nop             
  nop                                                  #  83    0xecfb4  1      OPC=nop             
  nop                                                  #  84    0xecfb5  1      OPC=nop             
  nop                                                  #  85    0xecfb6  1      OPC=nop             
  nop                                                  #  86    0xecfb7  1      OPC=nop             
  nop                                                  #  87    0xecfb8  1      OPC=nop             
  nop                                                  #  88    0xecfb9  1      OPC=nop             
  nop                                                  #  89    0xecfba  1      OPC=nop             
  nop                                                  #  90    0xecfbb  1      OPC=nop             
  nop                                                  #  91    0xecfbc  1      OPC=nop             
  nop                                                  #  92    0xecfbd  1      OPC=nop             
  nop                                                  #  93    0xecfbe  1      OPC=nop             
  nop                                                  #  94    0xecfbf  1      OPC=nop             
  nop                                                  #  95    0xecfc0  1      OPC=nop             
  nop                                                  #  96    0xecfc1  1      OPC=nop             
  callq .__cxa_call_unexpected                         #  97    0xecfc2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE7is_openEv

