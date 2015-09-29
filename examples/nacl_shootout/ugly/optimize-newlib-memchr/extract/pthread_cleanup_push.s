  .text
  .globl pthread_cleanup_push
  .type pthread_cleanup_push, @function

#! file-offset 0x6f5a0
#! rip-offset  0x2f5a0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.pthread_cleanup_push:           #        0x2f5a0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)         #  1     0x2f5a0  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)         #  2     0x2f5a5  5      OPC=movq_m64_r64    
  movl %edi, %r12d               #  3     0x2f5aa  3      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)          #  4     0x2f5ad  5      OPC=movq_m64_r64    
  movl $0xc, %edi                #  5     0x2f5b2  5      OPC=movl_r32_imm32  
  subl $0x18, %esp               #  6     0x2f5b7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  7     0x2f5ba  3      OPC=addq_r64_r64    
  movl %esi, %ebx                #  8     0x2f5bd  2      OPC=movl_r32_r32    
  nop                            #  9     0x2f5bf  1      OPC=nop             
  nop                            #  10    0x2f5c0  1      OPC=nop             
  nop                            #  11    0x2f5c1  1      OPC=nop             
  nop                            #  12    0x2f5c2  1      OPC=nop             
  nop                            #  13    0x2f5c3  1      OPC=nop             
  nop                            #  14    0x2f5c4  1      OPC=nop             
  nop                            #  15    0x2f5c5  1      OPC=nop             
  nop                            #  16    0x2f5c6  1      OPC=nop             
  nop                            #  17    0x2f5c7  1      OPC=nop             
  nop                            #  18    0x2f5c8  1      OPC=nop             
  nop                            #  19    0x2f5c9  1      OPC=nop             
  nop                            #  20    0x2f5ca  1      OPC=nop             
  nop                            #  21    0x2f5cb  1      OPC=nop             
  nop                            #  22    0x2f5cc  1      OPC=nop             
  nop                            #  23    0x2f5cd  1      OPC=nop             
  nop                            #  24    0x2f5ce  1      OPC=nop             
  nop                            #  25    0x2f5cf  1      OPC=nop             
  nop                            #  26    0x2f5d0  1      OPC=nop             
  nop                            #  27    0x2f5d1  1      OPC=nop             
  nop                            #  28    0x2f5d2  1      OPC=nop             
  nop                            #  29    0x2f5d3  1      OPC=nop             
  nop                            #  30    0x2f5d4  1      OPC=nop             
  nop                            #  31    0x2f5d5  1      OPC=nop             
  nop                            #  32    0x2f5d6  1      OPC=nop             
  nop                            #  33    0x2f5d7  1      OPC=nop             
  nop                            #  34    0x2f5d8  1      OPC=nop             
  nop                            #  35    0x2f5d9  1      OPC=nop             
  nop                            #  36    0x2f5da  1      OPC=nop             
  callq .malloc                  #  37    0x2f5db  5      OPC=callq_label     
  movl %eax, %r13d               #  38    0x2f5e0  3      OPC=movl_r32_r32    
  movl %r13d, %r13d              #  39    0x2f5e3  3      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%r13,1)   #  40    0x2f5e6  5      OPC=movl_m32_r32    
  movl %r13d, %r13d              #  41    0x2f5eb  3      OPC=movl_r32_r32    
  movl %ebx, 0x8(%r15,%r13,1)    #  42    0x2f5ee  5      OPC=movl_m32_r32    
  nop                            #  43    0x2f5f3  1      OPC=nop             
  nop                            #  44    0x2f5f4  1      OPC=nop             
  nop                            #  45    0x2f5f5  1      OPC=nop             
  nop                            #  46    0x2f5f6  1      OPC=nop             
  nop                            #  47    0x2f5f7  1      OPC=nop             
  nop                            #  48    0x2f5f8  1      OPC=nop             
  nop                            #  49    0x2f5f9  1      OPC=nop             
  nop                            #  50    0x2f5fa  1      OPC=nop             
  callq .__nacl_read_tp          #  51    0x2f5fb  5      OPC=callq_label     
  movl %eax, %eax                #  52    0x2f600  2      OPC=movl_r32_r32    
  movl -0x8(%r15,%rax,1), %eax   #  53    0x2f602  5      OPC=movl_r32_m32    
  nop                            #  54    0x2f607  1      OPC=nop             
  nop                            #  55    0x2f608  1      OPC=nop             
  nop                            #  56    0x2f609  1      OPC=nop             
  movl %r13d, %r13d              #  57    0x2f60a  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r13,1)       #  58    0x2f60d  4      OPC=movl_m32_r32    
  nop                            #  59    0x2f611  1      OPC=nop             
  nop                            #  60    0x2f612  1      OPC=nop             
  nop                            #  61    0x2f613  1      OPC=nop             
  nop                            #  62    0x2f614  1      OPC=nop             
  nop                            #  63    0x2f615  1      OPC=nop             
  nop                            #  64    0x2f616  1      OPC=nop             
  nop                            #  65    0x2f617  1      OPC=nop             
  nop                            #  66    0x2f618  1      OPC=nop             
  nop                            #  67    0x2f619  1      OPC=nop             
  nop                            #  68    0x2f61a  1      OPC=nop             
  callq .__nacl_read_tp          #  69    0x2f61b  5      OPC=callq_label     
  movl %eax, %eax                #  70    0x2f620  2      OPC=movl_r32_r32    
  movl %r13d, -0x8(%r15,%rax,1)  #  71    0x2f622  5      OPC=movl_m32_r32    
  nop                            #  72    0x2f627  1      OPC=nop             
  nop                            #  73    0x2f628  1      OPC=nop             
  nop                            #  74    0x2f629  1      OPC=nop             
  movq (%rsp), %rbx              #  75    0x2f62a  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12           #  76    0x2f62e  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13          #  77    0x2f633  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  78    0x2f638  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  79    0x2f63b  3      OPC=addq_r64_r64    
  popq %r11                      #  80    0x2f63e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  81    0x2f640  7      OPC=andl_r32_imm32  
  nop                            #  82    0x2f647  1      OPC=nop             
  nop                            #  83    0x2f648  1      OPC=nop             
  nop                            #  84    0x2f649  1      OPC=nop             
  nop                            #  85    0x2f64a  1      OPC=nop             
  addq %r15, %r11                #  86    0x2f64b  3      OPC=addq_r64_r64    
  jmpq %r11                      #  87    0x2f64e  3      OPC=jmpq_r64        
  nop                            #  88    0x2f651  1      OPC=nop             
  nop                            #  89    0x2f652  1      OPC=nop             
  nop                            #  90    0x2f653  1      OPC=nop             
  nop                            #  91    0x2f654  1      OPC=nop             
  nop                            #  92    0x2f655  1      OPC=nop             
  nop                            #  93    0x2f656  1      OPC=nop             
  nop                            #  94    0x2f657  1      OPC=nop             
  nop                            #  95    0x2f658  1      OPC=nop             
  nop                            #  96    0x2f659  1      OPC=nop             
  nop                            #  97    0x2f65a  1      OPC=nop             
  nop                            #  98    0x2f65b  1      OPC=nop             
  nop                            #  99    0x2f65c  1      OPC=nop             
  nop                            #  100   0x2f65d  1      OPC=nop             
  nop                            #  101   0x2f65e  1      OPC=nop             
  nop                            #  102   0x2f65f  1      OPC=nop             
  nop                            #  103   0x2f660  1      OPC=nop             
  nop                            #  104   0x2f661  1      OPC=nop             
  nop                            #  105   0x2f662  1      OPC=nop             
  nop                            #  106   0x2f663  1      OPC=nop             
  nop                            #  107   0x2f664  1      OPC=nop             
  nop                            #  108   0x2f665  1      OPC=nop             
  nop                            #  109   0x2f666  1      OPC=nop             
                                                                              
.size pthread_cleanup_push, .-pthread_cleanup_push

