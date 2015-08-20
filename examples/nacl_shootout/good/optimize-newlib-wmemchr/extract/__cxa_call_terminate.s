  .text
  .globl __cxa_call_terminate
  .type __cxa_call_terminate, @function

#! file-offset 0x120fa0
#! rip-offset  0xe0fa0
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
.__cxa_call_terminate:                       #        0xe0fa0  0      OPC=<label>         
  pushq %rbx                                 #  1     0xe0fa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                            #  2     0xe0fa1  2      OPC=movl_r32_r32    
  testq %rbx, %rbx                           #  3     0xe0fa3  3      OPC=testq_r64_r64   
  je .L_e0fe0                                #  4     0xe0fa6  2      OPC=je_label        
  movl %ebx, %edi                            #  5     0xe0fa8  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                             #  6     0xe0faa  2      OPC=xchgw_ax_r16    
  nop                                        #  7     0xe0fac  1      OPC=nop             
  nop                                        #  8     0xe0fad  1      OPC=nop             
  nop                                        #  9     0xe0fae  1      OPC=nop             
  nop                                        #  10    0xe0faf  1      OPC=nop             
  nop                                        #  11    0xe0fb0  1      OPC=nop             
  nop                                        #  12    0xe0fb1  1      OPC=nop             
  nop                                        #  13    0xe0fb2  1      OPC=nop             
  nop                                        #  14    0xe0fb3  1      OPC=nop             
  nop                                        #  15    0xe0fb4  1      OPC=nop             
  nop                                        #  16    0xe0fb5  1      OPC=nop             
  nop                                        #  17    0xe0fb6  1      OPC=nop             
  nop                                        #  18    0xe0fb7  1      OPC=nop             
  nop                                        #  19    0xe0fb8  1      OPC=nop             
  nop                                        #  20    0xe0fb9  1      OPC=nop             
  nop                                        #  21    0xe0fba  1      OPC=nop             
  callq .__cxa_begin_catch                   #  22    0xe0fbb  5      OPC=callq_label     
  movq $0xb8b1aabcbcd4d500, %rax             #  23    0xe0fc0  10     OPC=movq_r64_imm64  
  movl %ebx, %ebx                            #  24    0xe0fca  2      OPC=movl_r32_r32    
  addq (%r15,%rbx,1), %rax                   #  25    0xe0fcc  4      OPC=addq_r64_m64    
  cmpq $0x1, %rax                            #  26    0xe0fd0  4      OPC=cmpq_r64_imm8   
  jbe .L_e1000                               #  27    0xe0fd4  2      OPC=jbe_label       
  nop                                        #  28    0xe0fd6  1      OPC=nop             
  nop                                        #  29    0xe0fd7  1      OPC=nop             
  nop                                        #  30    0xe0fd8  1      OPC=nop             
  nop                                        #  31    0xe0fd9  1      OPC=nop             
  nop                                        #  32    0xe0fda  1      OPC=nop             
  nop                                        #  33    0xe0fdb  1      OPC=nop             
  nop                                        #  34    0xe0fdc  1      OPC=nop             
  nop                                        #  35    0xe0fdd  1      OPC=nop             
  nop                                        #  36    0xe0fde  1      OPC=nop             
  nop                                        #  37    0xe0fdf  1      OPC=nop             
.L_e0fe0:                                    #        0xe0fe0  0      OPC=<label>         
  nop                                        #  38    0xe0fe0  1      OPC=nop             
  nop                                        #  39    0xe0fe1  1      OPC=nop             
  nop                                        #  40    0xe0fe2  1      OPC=nop             
  nop                                        #  41    0xe0fe3  1      OPC=nop             
  nop                                        #  42    0xe0fe4  1      OPC=nop             
  nop                                        #  43    0xe0fe5  1      OPC=nop             
  nop                                        #  44    0xe0fe6  1      OPC=nop             
  nop                                        #  45    0xe0fe7  1      OPC=nop             
  nop                                        #  46    0xe0fe8  1      OPC=nop             
  nop                                        #  47    0xe0fe9  1      OPC=nop             
  nop                                        #  48    0xe0fea  1      OPC=nop             
  nop                                        #  49    0xe0feb  1      OPC=nop             
  nop                                        #  50    0xe0fec  1      OPC=nop             
  nop                                        #  51    0xe0fed  1      OPC=nop             
  nop                                        #  52    0xe0fee  1      OPC=nop             
  nop                                        #  53    0xe0fef  1      OPC=nop             
  nop                                        #  54    0xe0ff0  1      OPC=nop             
  nop                                        #  55    0xe0ff1  1      OPC=nop             
  nop                                        #  56    0xe0ff2  1      OPC=nop             
  nop                                        #  57    0xe0ff3  1      OPC=nop             
  nop                                        #  58    0xe0ff4  1      OPC=nop             
  nop                                        #  59    0xe0ff5  1      OPC=nop             
  nop                                        #  60    0xe0ff6  1      OPC=nop             
  nop                                        #  61    0xe0ff7  1      OPC=nop             
  nop                                        #  62    0xe0ff8  1      OPC=nop             
  nop                                        #  63    0xe0ff9  1      OPC=nop             
  nop                                        #  64    0xe0ffa  1      OPC=nop             
  callq ._ZSt9terminatev                     #  65    0xe0ffb  5      OPC=callq_label     
.L_e1000:                                    #        0xe1000  0      OPC=<label>         
  subl $0x30, %ebx                           #  66    0xe1000  3      OPC=subl_r32_imm8   
  movl %ebx, %ebx                            #  67    0xe1003  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %edi                #  68    0xe1005  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                             #  69    0xe100a  2      OPC=xchgw_ax_r16    
  nop                                        #  70    0xe100c  1      OPC=nop             
  nop                                        #  71    0xe100d  1      OPC=nop             
  nop                                        #  72    0xe100e  1      OPC=nop             
  nop                                        #  73    0xe100f  1      OPC=nop             
  nop                                        #  74    0xe1010  1      OPC=nop             
  nop                                        #  75    0xe1011  1      OPC=nop             
  nop                                        #  76    0xe1012  1      OPC=nop             
  nop                                        #  77    0xe1013  1      OPC=nop             
  nop                                        #  78    0xe1014  1      OPC=nop             
  nop                                        #  79    0xe1015  1      OPC=nop             
  nop                                        #  80    0xe1016  1      OPC=nop             
  nop                                        #  81    0xe1017  1      OPC=nop             
  nop                                        #  82    0xe1018  1      OPC=nop             
  nop                                        #  83    0xe1019  1      OPC=nop             
  nop                                        #  84    0xe101a  1      OPC=nop             
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  85    0xe101b  5      OPC=callq_label     
                                                                                          
.size __cxa_call_terminate, .-__cxa_call_terminate

