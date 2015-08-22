  .text
  .globl List_Add
  .type List_Add, @function

#! file-offset 0x67700
#! rip-offset  0x27700
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_Add:                     #        0x27700  0      OPC=<label>         
  pushq %r12                   #  1     0x27700  2      OPC=pushq_r64_1     
  pushq %rbx                   #  2     0x27702  1      OPC=pushq_r64_1     
  subl $0x8, %esp              #  3     0x27703  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  4     0x27706  3      OPC=addq_r64_r64    
  movl %edi, %ebx              #  5     0x27709  2      OPC=movl_r32_r32    
  movl %esi, %r12d             #  6     0x2770b  3      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  7     0x2770e  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %eax  #  8     0x27710  5      OPC=movl_r32_m32    
  movl %ebx, %ebx              #  9     0x27715  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %edx  #  10    0x27717  5      OPC=movl_r32_m32    
  subl $0x1, %edx              #  11    0x2771c  3      OPC=subl_r32_imm8   
  nop                          #  12    0x2771f  1      OPC=nop             
  cmpl %edx, %eax              #  13    0x27720  2      OPC=cmpl_r32_r32    
  jl .L_27760                  #  14    0x27722  2      OPC=jl_label        
  movl %ebx, %edi              #  15    0x27724  2      OPC=movl_r32_r32    
  nop                          #  16    0x27726  1      OPC=nop             
  nop                          #  17    0x27727  1      OPC=nop             
  nop                          #  18    0x27728  1      OPC=nop             
  nop                          #  19    0x27729  1      OPC=nop             
  nop                          #  20    0x2772a  1      OPC=nop             
  nop                          #  21    0x2772b  1      OPC=nop             
  nop                          #  22    0x2772c  1      OPC=nop             
  nop                          #  23    0x2772d  1      OPC=nop             
  nop                          #  24    0x2772e  1      OPC=nop             
  nop                          #  25    0x2772f  1      OPC=nop             
  nop                          #  26    0x27730  1      OPC=nop             
  nop                          #  27    0x27731  1      OPC=nop             
  nop                          #  28    0x27732  1      OPC=nop             
  nop                          #  29    0x27733  1      OPC=nop             
  nop                          #  30    0x27734  1      OPC=nop             
  nop                          #  31    0x27735  1      OPC=nop             
  nop                          #  32    0x27736  1      OPC=nop             
  nop                          #  33    0x27737  1      OPC=nop             
  nop                          #  34    0x27738  1      OPC=nop             
  nop                          #  35    0x27739  1      OPC=nop             
  nop                          #  36    0x2773a  1      OPC=nop             
  callq .MakeRoom              #  37    0x2773b  5      OPC=callq_label     
  movl %ebx, %ebx              #  38    0x27740  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %eax  #  39    0x27742  5      OPC=movl_r32_m32    
  nop                          #  40    0x27747  1      OPC=nop             
  nop                          #  41    0x27748  1      OPC=nop             
  nop                          #  42    0x27749  1      OPC=nop             
  nop                          #  43    0x2774a  1      OPC=nop             
  nop                          #  44    0x2774b  1      OPC=nop             
  nop                          #  45    0x2774c  1      OPC=nop             
  nop                          #  46    0x2774d  1      OPC=nop             
  nop                          #  47    0x2774e  1      OPC=nop             
  nop                          #  48    0x2774f  1      OPC=nop             
  nop                          #  49    0x27750  1      OPC=nop             
  nop                          #  50    0x27751  1      OPC=nop             
  nop                          #  51    0x27752  1      OPC=nop             
  nop                          #  52    0x27753  1      OPC=nop             
  nop                          #  53    0x27754  1      OPC=nop             
  nop                          #  54    0x27755  1      OPC=nop             
  nop                          #  55    0x27756  1      OPC=nop             
  nop                          #  56    0x27757  1      OPC=nop             
  nop                          #  57    0x27758  1      OPC=nop             
  nop                          #  58    0x27759  1      OPC=nop             
  nop                          #  59    0x2775a  1      OPC=nop             
  nop                          #  60    0x2775b  1      OPC=nop             
  nop                          #  61    0x2775c  1      OPC=nop             
  nop                          #  62    0x2775d  1      OPC=nop             
  nop                          #  63    0x2775e  1      OPC=nop             
  nop                          #  64    0x2775f  1      OPC=nop             
.L_27760:                      #        0x27760  0      OPC=<label>         
  movl %ebx, %ebx              #  65    0x27760  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx     #  66    0x27762  4      OPC=movl_r32_m32    
  addl $0x1, %eax              #  67    0x27766  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx              #  68    0x27769  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rbx,1)  #  69    0x2776b  5      OPC=movl_m32_r32    
  leal (%rdx,%rax,4), %eax     #  70    0x27770  3      OPC=leal_r32_m16    
  movl %eax, %eax              #  71    0x27773  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)    #  72    0x27775  4      OPC=movl_m32_r32    
  addl $0x8, %esp              #  73    0x27779  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  74    0x2777c  3      OPC=addq_r64_r64    
  popq %rbx                    #  75    0x2777f  1      OPC=popq_r64_1      
  popq %r12                    #  76    0x27780  2      OPC=popq_r64_1      
  popq %r11                    #  77    0x27782  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  78    0x27784  7      OPC=andl_r32_imm32  
  nop                          #  79    0x2778b  1      OPC=nop             
  nop                          #  80    0x2778c  1      OPC=nop             
  nop                          #  81    0x2778d  1      OPC=nop             
  nop                          #  82    0x2778e  1      OPC=nop             
  addq %r15, %r11              #  83    0x2778f  3      OPC=addq_r64_r64    
  jmpq %r11                    #  84    0x27792  3      OPC=jmpq_r64        
  nop                          #  85    0x27795  1      OPC=nop             
  nop                          #  86    0x27796  1      OPC=nop             
  nop                          #  87    0x27797  1      OPC=nop             
  nop                          #  88    0x27798  1      OPC=nop             
  nop                          #  89    0x27799  1      OPC=nop             
  nop                          #  90    0x2779a  1      OPC=nop             
  nop                          #  91    0x2779b  1      OPC=nop             
  nop                          #  92    0x2779c  1      OPC=nop             
  nop                          #  93    0x2779d  1      OPC=nop             
  nop                          #  94    0x2779e  1      OPC=nop             
  nop                          #  95    0x2779f  1      OPC=nop             
  nop                          #  96    0x277a0  1      OPC=nop             
  nop                          #  97    0x277a1  1      OPC=nop             
  nop                          #  98    0x277a2  1      OPC=nop             
  nop                          #  99    0x277a3  1      OPC=nop             
  nop                          #  100   0x277a4  1      OPC=nop             
  nop                          #  101   0x277a5  1      OPC=nop             
  nop                          #  102   0x277a6  1      OPC=nop             
                                                                            
.size List_Add, .-List_Add

