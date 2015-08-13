  .text
  .globl List_Append
  .type List_Append, @function

#! file-offset 0x674a0
#! rip-offset  0x274a0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.List_Append:                   #        0x274a0  0      OPC=<label>         
  pushq %r13                    #  1     0x274a0  2      OPC=pushq_r64_1     
  pushq %r12                    #  2     0x274a2  2      OPC=pushq_r64_1     
  pushq %rbx                    #  3     0x274a4  1      OPC=pushq_r64_1     
  movl %edi, %r13d              #  4     0x274a5  3      OPC=movl_r32_r32    
  movl %esi, %esi               #  5     0x274a8  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  6     0x274aa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  7     0x274ac  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  8     0x274b0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %ebx   #  9     0x274b2  5      OPC=movl_r32_m32    
  leal (%rax,%rbx,4), %ebx      #  10    0x274b7  3      OPC=leal_r32_m16    
  nop                           #  11    0x274ba  1      OPC=nop             
  nop                           #  12    0x274bb  1      OPC=nop             
  nop                           #  13    0x274bc  1      OPC=nop             
  nop                           #  14    0x274bd  1      OPC=nop             
  nop                           #  15    0x274be  1      OPC=nop             
  nop                           #  16    0x274bf  1      OPC=nop             
  movl %esi, %esi               #  17    0x274c0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %r12d  #  18    0x274c2  5      OPC=movl_r32_m32    
  leal (%rax,%r12,4), %r12d     #  19    0x274c7  4      OPC=leal_r32_m16    
  cmpl %r12d, %ebx              #  20    0x274cb  3      OPC=cmpl_r32_r32    
  ja .L_27520                   #  21    0x274ce  2      OPC=ja_label        
  nop                           #  22    0x274d0  1      OPC=nop             
  nop                           #  23    0x274d1  1      OPC=nop             
  nop                           #  24    0x274d2  1      OPC=nop             
  nop                           #  25    0x274d3  1      OPC=nop             
  nop                           #  26    0x274d4  1      OPC=nop             
  nop                           #  27    0x274d5  1      OPC=nop             
  nop                           #  28    0x274d6  1      OPC=nop             
  nop                           #  29    0x274d7  1      OPC=nop             
  nop                           #  30    0x274d8  1      OPC=nop             
  nop                           #  31    0x274d9  1      OPC=nop             
  nop                           #  32    0x274da  1      OPC=nop             
  nop                           #  33    0x274db  1      OPC=nop             
  nop                           #  34    0x274dc  1      OPC=nop             
  nop                           #  35    0x274dd  1      OPC=nop             
  nop                           #  36    0x274de  1      OPC=nop             
  nop                           #  37    0x274df  1      OPC=nop             
.L_274e0:                       #        0x274e0  0      OPC=<label>         
  movl %ebx, %ebx               #  38    0x274e0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %esi      #  39    0x274e2  4      OPC=movl_r32_m32    
  addl $0x4, %ebx               #  40    0x274e6  3      OPC=addl_r32_imm8   
  movl %r13d, %edi              #  41    0x274e9  3      OPC=movl_r32_r32    
  nop                           #  42    0x274ec  1      OPC=nop             
  nop                           #  43    0x274ed  1      OPC=nop             
  nop                           #  44    0x274ee  1      OPC=nop             
  nop                           #  45    0x274ef  1      OPC=nop             
  nop                           #  46    0x274f0  1      OPC=nop             
  nop                           #  47    0x274f1  1      OPC=nop             
  nop                           #  48    0x274f2  1      OPC=nop             
  nop                           #  49    0x274f3  1      OPC=nop             
  nop                           #  50    0x274f4  1      OPC=nop             
  nop                           #  51    0x274f5  1      OPC=nop             
  nop                           #  52    0x274f6  1      OPC=nop             
  nop                           #  53    0x274f7  1      OPC=nop             
  nop                           #  54    0x274f8  1      OPC=nop             
  nop                           #  55    0x274f9  1      OPC=nop             
  nop                           #  56    0x274fa  1      OPC=nop             
  callq .List_Add               #  57    0x274fb  5      OPC=callq_label     
  cmpl %ebx, %r12d              #  58    0x27500  3      OPC=cmpl_r32_r32    
  jae .L_274e0                  #  59    0x27503  2      OPC=jae_label       
  nop                           #  60    0x27505  1      OPC=nop             
  nop                           #  61    0x27506  1      OPC=nop             
  nop                           #  62    0x27507  1      OPC=nop             
  nop                           #  63    0x27508  1      OPC=nop             
  nop                           #  64    0x27509  1      OPC=nop             
  nop                           #  65    0x2750a  1      OPC=nop             
  nop                           #  66    0x2750b  1      OPC=nop             
  nop                           #  67    0x2750c  1      OPC=nop             
  nop                           #  68    0x2750d  1      OPC=nop             
  nop                           #  69    0x2750e  1      OPC=nop             
  nop                           #  70    0x2750f  1      OPC=nop             
  nop                           #  71    0x27510  1      OPC=nop             
  nop                           #  72    0x27511  1      OPC=nop             
  nop                           #  73    0x27512  1      OPC=nop             
  nop                           #  74    0x27513  1      OPC=nop             
  nop                           #  75    0x27514  1      OPC=nop             
  nop                           #  76    0x27515  1      OPC=nop             
  nop                           #  77    0x27516  1      OPC=nop             
  nop                           #  78    0x27517  1      OPC=nop             
  nop                           #  79    0x27518  1      OPC=nop             
  nop                           #  80    0x27519  1      OPC=nop             
  nop                           #  81    0x2751a  1      OPC=nop             
  nop                           #  82    0x2751b  1      OPC=nop             
  nop                           #  83    0x2751c  1      OPC=nop             
  nop                           #  84    0x2751d  1      OPC=nop             
  nop                           #  85    0x2751e  1      OPC=nop             
  nop                           #  86    0x2751f  1      OPC=nop             
.L_27520:                       #        0x27520  0      OPC=<label>         
  popq %rbx                     #  87    0x27520  1      OPC=popq_r64_1      
  popq %r12                     #  88    0x27521  2      OPC=popq_r64_1      
  popq %r13                     #  89    0x27523  2      OPC=popq_r64_1      
  popq %r11                     #  90    0x27525  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  91    0x27527  7      OPC=andl_r32_imm32  
  nop                           #  92    0x2752e  1      OPC=nop             
  nop                           #  93    0x2752f  1      OPC=nop             
  nop                           #  94    0x27530  1      OPC=nop             
  nop                           #  95    0x27531  1      OPC=nop             
  addq %r15, %r11               #  96    0x27532  3      OPC=addq_r64_r64    
  jmpq %r11                     #  97    0x27535  3      OPC=jmpq_r64        
  nop                           #  98    0x27538  1      OPC=nop             
  nop                           #  99    0x27539  1      OPC=nop             
  nop                           #  100   0x2753a  1      OPC=nop             
  nop                           #  101   0x2753b  1      OPC=nop             
  nop                           #  102   0x2753c  1      OPC=nop             
  nop                           #  103   0x2753d  1      OPC=nop             
  nop                           #  104   0x2753e  1      OPC=nop             
  nop                           #  105   0x2753f  1      OPC=nop             
  nop                           #  106   0x27540  1      OPC=nop             
  nop                           #  107   0x27541  1      OPC=nop             
  nop                           #  108   0x27542  1      OPC=nop             
  nop                           #  109   0x27543  1      OPC=nop             
  nop                           #  110   0x27544  1      OPC=nop             
  nop                           #  111   0x27545  1      OPC=nop             
  nop                           #  112   0x27546  1      OPC=nop             
                                                                             
.size List_Append, .-List_Append

