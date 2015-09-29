  .text
  .globl __gmp_tmp_reentrant_free
  .type __gmp_tmp_reentrant_free, @function

#! file-offset 0x78720
#! rip-offset  0x38720
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_tmp_reentrant_free:     #        0x38720  0      OPC=<label>         
  movl %edi, %edi              #  1     0x38720  2      OPC=movl_r32_r32    
  pushq %rbx                   #  2     0x38722  1      OPC=pushq_r64_1     
  testq %rdi, %rdi             #  3     0x38723  3      OPC=testq_r64_r64   
  je .L_38780                  #  4     0x38726  2      OPC=je_label        
  nop                          #  5     0x38728  1      OPC=nop             
  nop                          #  6     0x38729  1      OPC=nop             
  nop                          #  7     0x3872a  1      OPC=nop             
  nop                          #  8     0x3872b  1      OPC=nop             
  nop                          #  9     0x3872c  1      OPC=nop             
  nop                          #  10    0x3872d  1      OPC=nop             
  nop                          #  11    0x3872e  1      OPC=nop             
  nop                          #  12    0x3872f  1      OPC=nop             
  nop                          #  13    0x38730  1      OPC=nop             
  nop                          #  14    0x38731  1      OPC=nop             
  nop                          #  15    0x38732  1      OPC=nop             
  nop                          #  16    0x38733  1      OPC=nop             
  nop                          #  17    0x38734  1      OPC=nop             
  nop                          #  18    0x38735  1      OPC=nop             
  nop                          #  19    0x38736  1      OPC=nop             
  nop                          #  20    0x38737  1      OPC=nop             
  nop                          #  21    0x38738  1      OPC=nop             
  nop                          #  22    0x38739  1      OPC=nop             
  nop                          #  23    0x3873a  1      OPC=nop             
  nop                          #  24    0x3873b  1      OPC=nop             
  nop                          #  25    0x3873c  1      OPC=nop             
  nop                          #  26    0x3873d  1      OPC=nop             
  nop                          #  27    0x3873e  1      OPC=nop             
  nop                          #  28    0x3873f  1      OPC=nop             
.L_38740:                      #        0x38740  0      OPC=<label>         
  movl %edi, %edi              #  29    0x38740  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ebx     #  30    0x38742  4      OPC=movl_r32_m32    
  movl 0x10038108(%rip), %eax  #  31    0x38746  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  32    0x3874c  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %esi  #  33    0x3874e  5      OPC=movl_r32_m32    
  nop                          #  34    0x38753  1      OPC=nop             
  nop                          #  35    0x38754  1      OPC=nop             
  nop                          #  36    0x38755  1      OPC=nop             
  nop                          #  37    0x38756  1      OPC=nop             
  nop                          #  38    0x38757  1      OPC=nop             
  andl $0xffffffe0, %eax       #  39    0x38758  6      OPC=andl_r32_imm32  
  nop                          #  40    0x3875e  1      OPC=nop             
  nop                          #  41    0x3875f  1      OPC=nop             
  nop                          #  42    0x38760  1      OPC=nop             
  addq %r15, %rax              #  43    0x38761  3      OPC=addq_r64_r64    
  callq %rax                   #  44    0x38764  2      OPC=callq_r64       
  testq %rbx, %rbx             #  45    0x38766  3      OPC=testq_r64_r64   
  movq %rbx, %rdi              #  46    0x38769  3      OPC=movq_r64_r64    
  jne .L_38740                 #  47    0x3876c  2      OPC=jne_label       
  nop                          #  48    0x3876e  1      OPC=nop             
  nop                          #  49    0x3876f  1      OPC=nop             
  nop                          #  50    0x38770  1      OPC=nop             
  nop                          #  51    0x38771  1      OPC=nop             
  nop                          #  52    0x38772  1      OPC=nop             
  nop                          #  53    0x38773  1      OPC=nop             
  nop                          #  54    0x38774  1      OPC=nop             
  nop                          #  55    0x38775  1      OPC=nop             
  nop                          #  56    0x38776  1      OPC=nop             
  nop                          #  57    0x38777  1      OPC=nop             
  nop                          #  58    0x38778  1      OPC=nop             
  nop                          #  59    0x38779  1      OPC=nop             
  nop                          #  60    0x3877a  1      OPC=nop             
  nop                          #  61    0x3877b  1      OPC=nop             
  nop                          #  62    0x3877c  1      OPC=nop             
  nop                          #  63    0x3877d  1      OPC=nop             
  nop                          #  64    0x3877e  1      OPC=nop             
  nop                          #  65    0x3877f  1      OPC=nop             
  nop                          #  66    0x38780  1      OPC=nop             
  nop                          #  67    0x38781  1      OPC=nop             
  nop                          #  68    0x38782  1      OPC=nop             
  nop                          #  69    0x38783  1      OPC=nop             
  nop                          #  70    0x38784  1      OPC=nop             
  nop                          #  71    0x38785  1      OPC=nop             
.L_38780:                      #        0x38786  0      OPC=<label>         
  popq %rbx                    #  72    0x38786  1      OPC=popq_r64_1      
  popq %r11                    #  73    0x38787  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  74    0x38789  7      OPC=andl_r32_imm32  
  nop                          #  75    0x38790  1      OPC=nop             
  nop                          #  76    0x38791  1      OPC=nop             
  nop                          #  77    0x38792  1      OPC=nop             
  nop                          #  78    0x38793  1      OPC=nop             
  addq %r15, %r11              #  79    0x38794  3      OPC=addq_r64_r64    
  jmpq %r11                    #  80    0x38797  3      OPC=jmpq_r64        
  nop                          #  81    0x3879a  1      OPC=nop             
  nop                          #  82    0x3879b  1      OPC=nop             
  nop                          #  83    0x3879c  1      OPC=nop             
  nop                          #  84    0x3879d  1      OPC=nop             
  nop                          #  85    0x3879e  1      OPC=nop             
  nop                          #  86    0x3879f  1      OPC=nop             
  nop                          #  87    0x387a0  1      OPC=nop             
  nop                          #  88    0x387a1  1      OPC=nop             
  nop                          #  89    0x387a2  1      OPC=nop             
  nop                          #  90    0x387a3  1      OPC=nop             
  nop                          #  91    0x387a4  1      OPC=nop             
  nop                          #  92    0x387a5  1      OPC=nop             
  nop                          #  93    0x387a6  1      OPC=nop             
  nop                          #  94    0x387a7  1      OPC=nop             
  nop                          #  95    0x387a8  1      OPC=nop             
  nop                          #  96    0x387a9  1      OPC=nop             
  nop                          #  97    0x387aa  1      OPC=nop             
  nop                          #  98    0x387ab  1      OPC=nop             
  nop                          #  99    0x387ac  1      OPC=nop             
                                                                            
.size __gmp_tmp_reentrant_free, .-__gmp_tmp_reentrant_free

