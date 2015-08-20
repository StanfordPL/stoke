  .text
  .globl pthread_cleanup_push
  .type pthread_cleanup_push, @function

#! file-offset 0x6ee80
#! rip-offset  0x2ee80
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.pthread_cleanup_push:           #        0x2ee80  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)         #  1     0x2ee80  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)         #  2     0x2ee85  5      OPC=movq_m64_r64    
  movl %edi, %r12d               #  3     0x2ee8a  3      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)          #  4     0x2ee8d  5      OPC=movq_m64_r64    
  movl $0xc, %edi                #  5     0x2ee92  5      OPC=movl_r32_imm32  
  subl $0x18, %esp               #  6     0x2ee97  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  7     0x2ee9a  3      OPC=addq_r64_r64    
  movl %esi, %ebx                #  8     0x2ee9d  2      OPC=movl_r32_r32    
  nop                            #  9     0x2ee9f  1      OPC=nop             
  nop                            #  10    0x2eea0  1      OPC=nop             
  nop                            #  11    0x2eea1  1      OPC=nop             
  nop                            #  12    0x2eea2  1      OPC=nop             
  nop                            #  13    0x2eea3  1      OPC=nop             
  nop                            #  14    0x2eea4  1      OPC=nop             
  nop                            #  15    0x2eea5  1      OPC=nop             
  nop                            #  16    0x2eea6  1      OPC=nop             
  nop                            #  17    0x2eea7  1      OPC=nop             
  nop                            #  18    0x2eea8  1      OPC=nop             
  nop                            #  19    0x2eea9  1      OPC=nop             
  nop                            #  20    0x2eeaa  1      OPC=nop             
  nop                            #  21    0x2eeab  1      OPC=nop             
  nop                            #  22    0x2eeac  1      OPC=nop             
  nop                            #  23    0x2eead  1      OPC=nop             
  nop                            #  24    0x2eeae  1      OPC=nop             
  nop                            #  25    0x2eeaf  1      OPC=nop             
  nop                            #  26    0x2eeb0  1      OPC=nop             
  nop                            #  27    0x2eeb1  1      OPC=nop             
  nop                            #  28    0x2eeb2  1      OPC=nop             
  nop                            #  29    0x2eeb3  1      OPC=nop             
  nop                            #  30    0x2eeb4  1      OPC=nop             
  nop                            #  31    0x2eeb5  1      OPC=nop             
  nop                            #  32    0x2eeb6  1      OPC=nop             
  nop                            #  33    0x2eeb7  1      OPC=nop             
  nop                            #  34    0x2eeb8  1      OPC=nop             
  nop                            #  35    0x2eeb9  1      OPC=nop             
  nop                            #  36    0x2eeba  1      OPC=nop             
  callq .malloc                  #  37    0x2eebb  5      OPC=callq_label     
  movl %eax, %r13d               #  38    0x2eec0  3      OPC=movl_r32_r32    
  movl %r13d, %r13d              #  39    0x2eec3  3      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%r13,1)   #  40    0x2eec6  5      OPC=movl_m32_r32    
  movl %r13d, %r13d              #  41    0x2eecb  3      OPC=movl_r32_r32    
  movl %ebx, 0x8(%r15,%r13,1)    #  42    0x2eece  5      OPC=movl_m32_r32    
  nop                            #  43    0x2eed3  1      OPC=nop             
  nop                            #  44    0x2eed4  1      OPC=nop             
  nop                            #  45    0x2eed5  1      OPC=nop             
  nop                            #  46    0x2eed6  1      OPC=nop             
  nop                            #  47    0x2eed7  1      OPC=nop             
  nop                            #  48    0x2eed8  1      OPC=nop             
  nop                            #  49    0x2eed9  1      OPC=nop             
  nop                            #  50    0x2eeda  1      OPC=nop             
  callq .__nacl_read_tp          #  51    0x2eedb  5      OPC=callq_label     
  movl %eax, %eax                #  52    0x2eee0  2      OPC=movl_r32_r32    
  movl -0x8(%r15,%rax,1), %eax   #  53    0x2eee2  5      OPC=movl_r32_m32    
  nop                            #  54    0x2eee7  1      OPC=nop             
  nop                            #  55    0x2eee8  1      OPC=nop             
  nop                            #  56    0x2eee9  1      OPC=nop             
  movl %r13d, %r13d              #  57    0x2eeea  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r13,1)       #  58    0x2eeed  4      OPC=movl_m32_r32    
  nop                            #  59    0x2eef1  1      OPC=nop             
  nop                            #  60    0x2eef2  1      OPC=nop             
  nop                            #  61    0x2eef3  1      OPC=nop             
  nop                            #  62    0x2eef4  1      OPC=nop             
  nop                            #  63    0x2eef5  1      OPC=nop             
  nop                            #  64    0x2eef6  1      OPC=nop             
  nop                            #  65    0x2eef7  1      OPC=nop             
  nop                            #  66    0x2eef8  1      OPC=nop             
  nop                            #  67    0x2eef9  1      OPC=nop             
  nop                            #  68    0x2eefa  1      OPC=nop             
  callq .__nacl_read_tp          #  69    0x2eefb  5      OPC=callq_label     
  movl %eax, %eax                #  70    0x2ef00  2      OPC=movl_r32_r32    
  movl %r13d, -0x8(%r15,%rax,1)  #  71    0x2ef02  5      OPC=movl_m32_r32    
  nop                            #  72    0x2ef07  1      OPC=nop             
  nop                            #  73    0x2ef08  1      OPC=nop             
  nop                            #  74    0x2ef09  1      OPC=nop             
  movq (%rsp), %rbx              #  75    0x2ef0a  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12           #  76    0x2ef0e  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13          #  77    0x2ef13  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  78    0x2ef18  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  79    0x2ef1b  3      OPC=addq_r64_r64    
  popq %r11                      #  80    0x2ef1e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  81    0x2ef20  7      OPC=andl_r32_imm32  
  nop                            #  82    0x2ef27  1      OPC=nop             
  nop                            #  83    0x2ef28  1      OPC=nop             
  nop                            #  84    0x2ef29  1      OPC=nop             
  nop                            #  85    0x2ef2a  1      OPC=nop             
  addq %r15, %r11                #  86    0x2ef2b  3      OPC=addq_r64_r64    
  jmpq %r11                      #  87    0x2ef2e  3      OPC=jmpq_r64        
  nop                            #  88    0x2ef31  1      OPC=nop             
  nop                            #  89    0x2ef32  1      OPC=nop             
  nop                            #  90    0x2ef33  1      OPC=nop             
  nop                            #  91    0x2ef34  1      OPC=nop             
  nop                            #  92    0x2ef35  1      OPC=nop             
  nop                            #  93    0x2ef36  1      OPC=nop             
  nop                            #  94    0x2ef37  1      OPC=nop             
  nop                            #  95    0x2ef38  1      OPC=nop             
  nop                            #  96    0x2ef39  1      OPC=nop             
  nop                            #  97    0x2ef3a  1      OPC=nop             
  nop                            #  98    0x2ef3b  1      OPC=nop             
  nop                            #  99    0x2ef3c  1      OPC=nop             
  nop                            #  100   0x2ef3d  1      OPC=nop             
  nop                            #  101   0x2ef3e  1      OPC=nop             
  nop                            #  102   0x2ef3f  1      OPC=nop             
  nop                            #  103   0x2ef40  1      OPC=nop             
  nop                            #  104   0x2ef41  1      OPC=nop             
  nop                            #  105   0x2ef42  1      OPC=nop             
  nop                            #  106   0x2ef43  1      OPC=nop             
  nop                            #  107   0x2ef44  1      OPC=nop             
  nop                            #  108   0x2ef45  1      OPC=nop             
  nop                            #  109   0x2ef46  1      OPC=nop             
                                                                              
.size pthread_cleanup_push, .-pthread_cleanup_push

