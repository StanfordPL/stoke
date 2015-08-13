  .text
  .globl pthread_cleanup_push
  .type pthread_cleanup_push, @function

#! file-offset 0x6eb80
#! rip-offset  0x2eb80
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.pthread_cleanup_push:           #        0x2eb80  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)         #  1     0x2eb80  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)         #  2     0x2eb85  5      OPC=movq_m64_r64    
  movl %edi, %r12d               #  3     0x2eb8a  3      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)          #  4     0x2eb8d  5      OPC=movq_m64_r64    
  movl $0xc, %edi                #  5     0x2eb92  5      OPC=movl_r32_imm32  
  subl $0x18, %esp               #  6     0x2eb97  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  7     0x2eb9a  3      OPC=addq_r64_r64    
  movl %esi, %ebx                #  8     0x2eb9d  2      OPC=movl_r32_r32    
  nop                            #  9     0x2eb9f  1      OPC=nop             
  nop                            #  10    0x2eba0  1      OPC=nop             
  nop                            #  11    0x2eba1  1      OPC=nop             
  nop                            #  12    0x2eba2  1      OPC=nop             
  nop                            #  13    0x2eba3  1      OPC=nop             
  nop                            #  14    0x2eba4  1      OPC=nop             
  nop                            #  15    0x2eba5  1      OPC=nop             
  nop                            #  16    0x2eba6  1      OPC=nop             
  nop                            #  17    0x2eba7  1      OPC=nop             
  nop                            #  18    0x2eba8  1      OPC=nop             
  nop                            #  19    0x2eba9  1      OPC=nop             
  nop                            #  20    0x2ebaa  1      OPC=nop             
  nop                            #  21    0x2ebab  1      OPC=nop             
  nop                            #  22    0x2ebac  1      OPC=nop             
  nop                            #  23    0x2ebad  1      OPC=nop             
  nop                            #  24    0x2ebae  1      OPC=nop             
  nop                            #  25    0x2ebaf  1      OPC=nop             
  nop                            #  26    0x2ebb0  1      OPC=nop             
  nop                            #  27    0x2ebb1  1      OPC=nop             
  nop                            #  28    0x2ebb2  1      OPC=nop             
  nop                            #  29    0x2ebb3  1      OPC=nop             
  nop                            #  30    0x2ebb4  1      OPC=nop             
  nop                            #  31    0x2ebb5  1      OPC=nop             
  nop                            #  32    0x2ebb6  1      OPC=nop             
  nop                            #  33    0x2ebb7  1      OPC=nop             
  nop                            #  34    0x2ebb8  1      OPC=nop             
  nop                            #  35    0x2ebb9  1      OPC=nop             
  nop                            #  36    0x2ebba  1      OPC=nop             
  callq .malloc                  #  37    0x2ebbb  5      OPC=callq_label     
  movl %eax, %r13d               #  38    0x2ebc0  3      OPC=movl_r32_r32    
  movl %r13d, %r13d              #  39    0x2ebc3  3      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%r13,1)   #  40    0x2ebc6  5      OPC=movl_m32_r32    
  movl %r13d, %r13d              #  41    0x2ebcb  3      OPC=movl_r32_r32    
  movl %ebx, 0x8(%r15,%r13,1)    #  42    0x2ebce  5      OPC=movl_m32_r32    
  nop                            #  43    0x2ebd3  1      OPC=nop             
  nop                            #  44    0x2ebd4  1      OPC=nop             
  nop                            #  45    0x2ebd5  1      OPC=nop             
  nop                            #  46    0x2ebd6  1      OPC=nop             
  nop                            #  47    0x2ebd7  1      OPC=nop             
  nop                            #  48    0x2ebd8  1      OPC=nop             
  nop                            #  49    0x2ebd9  1      OPC=nop             
  nop                            #  50    0x2ebda  1      OPC=nop             
  callq .__nacl_read_tp          #  51    0x2ebdb  5      OPC=callq_label     
  movl %eax, %eax                #  52    0x2ebe0  2      OPC=movl_r32_r32    
  movl -0x8(%r15,%rax,1), %eax   #  53    0x2ebe2  5      OPC=movl_r32_m32    
  nop                            #  54    0x2ebe7  1      OPC=nop             
  nop                            #  55    0x2ebe8  1      OPC=nop             
  nop                            #  56    0x2ebe9  1      OPC=nop             
  movl %r13d, %r13d              #  57    0x2ebea  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r13,1)       #  58    0x2ebed  4      OPC=movl_m32_r32    
  nop                            #  59    0x2ebf1  1      OPC=nop             
  nop                            #  60    0x2ebf2  1      OPC=nop             
  nop                            #  61    0x2ebf3  1      OPC=nop             
  nop                            #  62    0x2ebf4  1      OPC=nop             
  nop                            #  63    0x2ebf5  1      OPC=nop             
  nop                            #  64    0x2ebf6  1      OPC=nop             
  nop                            #  65    0x2ebf7  1      OPC=nop             
  nop                            #  66    0x2ebf8  1      OPC=nop             
  nop                            #  67    0x2ebf9  1      OPC=nop             
  nop                            #  68    0x2ebfa  1      OPC=nop             
  callq .__nacl_read_tp          #  69    0x2ebfb  5      OPC=callq_label     
  movl %eax, %eax                #  70    0x2ec00  2      OPC=movl_r32_r32    
  movl %r13d, -0x8(%r15,%rax,1)  #  71    0x2ec02  5      OPC=movl_m32_r32    
  nop                            #  72    0x2ec07  1      OPC=nop             
  nop                            #  73    0x2ec08  1      OPC=nop             
  nop                            #  74    0x2ec09  1      OPC=nop             
  movq (%rsp), %rbx              #  75    0x2ec0a  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12           #  76    0x2ec0e  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13          #  77    0x2ec13  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  78    0x2ec18  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  79    0x2ec1b  3      OPC=addq_r64_r64    
  popq %r11                      #  80    0x2ec1e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  81    0x2ec20  7      OPC=andl_r32_imm32  
  nop                            #  82    0x2ec27  1      OPC=nop             
  nop                            #  83    0x2ec28  1      OPC=nop             
  nop                            #  84    0x2ec29  1      OPC=nop             
  nop                            #  85    0x2ec2a  1      OPC=nop             
  addq %r15, %r11                #  86    0x2ec2b  3      OPC=addq_r64_r64    
  jmpq %r11                      #  87    0x2ec2e  3      OPC=jmpq_r64        
  nop                            #  88    0x2ec31  1      OPC=nop             
  nop                            #  89    0x2ec32  1      OPC=nop             
  nop                            #  90    0x2ec33  1      OPC=nop             
  nop                            #  91    0x2ec34  1      OPC=nop             
  nop                            #  92    0x2ec35  1      OPC=nop             
  nop                            #  93    0x2ec36  1      OPC=nop             
  nop                            #  94    0x2ec37  1      OPC=nop             
  nop                            #  95    0x2ec38  1      OPC=nop             
  nop                            #  96    0x2ec39  1      OPC=nop             
  nop                            #  97    0x2ec3a  1      OPC=nop             
  nop                            #  98    0x2ec3b  1      OPC=nop             
  nop                            #  99    0x2ec3c  1      OPC=nop             
  nop                            #  100   0x2ec3d  1      OPC=nop             
  nop                            #  101   0x2ec3e  1      OPC=nop             
  nop                            #  102   0x2ec3f  1      OPC=nop             
  nop                            #  103   0x2ec40  1      OPC=nop             
  nop                            #  104   0x2ec41  1      OPC=nop             
  nop                            #  105   0x2ec42  1      OPC=nop             
  nop                            #  106   0x2ec43  1      OPC=nop             
  nop                            #  107   0x2ec44  1      OPC=nop             
  nop                            #  108   0x2ec45  1      OPC=nop             
  nop                            #  109   0x2ec46  1      OPC=nop             
                                                                              
.size pthread_cleanup_push, .-pthread_cleanup_push

