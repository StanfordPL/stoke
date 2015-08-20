  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x187800
#! rip-offset  0x147800
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.fputwc:                        #        0x147800  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)        #  1     0x147800  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)        #  2     0x147805  5      OPC=movq_m64_r64   
  movl %edi, %ebx               #  3     0x14780a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)         #  4     0x14780c  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  5     0x147811  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  6     0x147814  3      OPC=addq_r64_r64   
  movl %esi, %r13d              #  7     0x147817  3      OPC=movl_r32_r32   
  nop                           #  8     0x14781a  1      OPC=nop            
  callq .__nacl_read_tp         #  9     0x14781b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  10    0x147820  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  11    0x147827  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %r12d     #  12    0x147829  4      OPC=movl_r32_m32   
  testq %r12, %r12              #  13    0x14782d  3      OPC=testq_r64_r64  
  je .L_147860                  #  14    0x147830  2      OPC=je_label       
  movl %r12d, %r12d             #  15    0x147832  3      OPC=movl_r32_r32   
  movl 0x38(%r15,%r12,1), %eax  #  16    0x147835  5      OPC=movl_r32_m32   
  testl %eax, %eax              #  17    0x14783a  2      OPC=testl_r32_r32  
  nop                           #  18    0x14783c  1      OPC=nop            
  nop                           #  19    0x14783d  1      OPC=nop            
  nop                           #  20    0x14783e  1      OPC=nop            
  nop                           #  21    0x14783f  1      OPC=nop            
  jne .L_147860                 #  22    0x147840  2      OPC=jne_label      
  movl %r12d, %edi              #  23    0x147842  3      OPC=movl_r32_r32   
  nop                           #  24    0x147845  1      OPC=nop            
  nop                           #  25    0x147846  1      OPC=nop            
  nop                           #  26    0x147847  1      OPC=nop            
  nop                           #  27    0x147848  1      OPC=nop            
  nop                           #  28    0x147849  1      OPC=nop            
  nop                           #  29    0x14784a  1      OPC=nop            
  nop                           #  30    0x14784b  1      OPC=nop            
  nop                           #  31    0x14784c  1      OPC=nop            
  nop                           #  32    0x14784d  1      OPC=nop            
  nop                           #  33    0x14784e  1      OPC=nop            
  nop                           #  34    0x14784f  1      OPC=nop            
  nop                           #  35    0x147850  1      OPC=nop            
  nop                           #  36    0x147851  1      OPC=nop            
  nop                           #  37    0x147852  1      OPC=nop            
  nop                           #  38    0x147853  1      OPC=nop            
  nop                           #  39    0x147854  1      OPC=nop            
  nop                           #  40    0x147855  1      OPC=nop            
  nop                           #  41    0x147856  1      OPC=nop            
  nop                           #  42    0x147857  1      OPC=nop            
  nop                           #  43    0x147858  1      OPC=nop            
  nop                           #  44    0x147859  1      OPC=nop            
  nop                           #  45    0x14785a  1      OPC=nop            
  callq .__sinit                #  46    0x14785b  5      OPC=callq_label    
.L_147860:                      #        0x147860  0      OPC=<label>        
  movl %r13d, %edx              #  47    0x147860  3      OPC=movl_r32_r32   
  movl %ebx, %esi               #  48    0x147863  2      OPC=movl_r32_r32   
  movl %r12d, %edi              #  49    0x147865  3      OPC=movl_r32_r32   
  movq (%rsp), %rbx             #  50    0x147868  4      OPC=movq_r64_m64   
  movq 0x8(%rsp), %r12          #  51    0x14786c  5      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13         #  52    0x147871  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  53    0x147876  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  54    0x147879  3      OPC=addq_r64_r64   
  nop                           #  55    0x14787c  1      OPC=nop            
  nop                           #  56    0x14787d  1      OPC=nop            
  nop                           #  57    0x14787e  1      OPC=nop            
  nop                           #  58    0x14787f  1      OPC=nop            
  jmpq ._fputwc_r               #  59    0x147880  5      OPC=jmpq_label_1   
  nop                           #  60    0x147885  1      OPC=nop            
  nop                           #  61    0x147886  1      OPC=nop            
  nop                           #  62    0x147887  1      OPC=nop            
  nop                           #  63    0x147888  1      OPC=nop            
  nop                           #  64    0x147889  1      OPC=nop            
  nop                           #  65    0x14788a  1      OPC=nop            
  nop                           #  66    0x14788b  1      OPC=nop            
  nop                           #  67    0x14788c  1      OPC=nop            
  nop                           #  68    0x14788d  1      OPC=nop            
  nop                           #  69    0x14788e  1      OPC=nop            
  nop                           #  70    0x14788f  1      OPC=nop            
  nop                           #  71    0x147890  1      OPC=nop            
  nop                           #  72    0x147891  1      OPC=nop            
  nop                           #  73    0x147892  1      OPC=nop            
  nop                           #  74    0x147893  1      OPC=nop            
  nop                           #  75    0x147894  1      OPC=nop            
  nop                           #  76    0x147895  1      OPC=nop            
  nop                           #  77    0x147896  1      OPC=nop            
  nop                           #  78    0x147897  1      OPC=nop            
  nop                           #  79    0x147898  1      OPC=nop            
  nop                           #  80    0x147899  1      OPC=nop            
  nop                           #  81    0x14789a  1      OPC=nop            
  nop                           #  82    0x14789b  1      OPC=nop            
  nop                           #  83    0x14789c  1      OPC=nop            
  nop                           #  84    0x14789d  1      OPC=nop            
  nop                           #  85    0x14789e  1      OPC=nop            
  nop                           #  86    0x14789f  1      OPC=nop            
                                                                             
.size fputwc, .-fputwc

