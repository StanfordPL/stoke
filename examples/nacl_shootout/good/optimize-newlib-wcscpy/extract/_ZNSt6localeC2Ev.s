  .text
  .globl _ZNSt6localeC2Ev
  .type _ZNSt6localeC2Ev, @function

#! file-offset 0xa2940
#! rip-offset  0x62940
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC2Ev:                              #        0x62940  0      OPC=<label>         
  pushq %rbx                                    #  1     0x62940  1      OPC=pushq_r64_1     
  movl %edi, %ebx                               #  2     0x62941  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  3     0x62943  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)                      #  4     0x62945  8      OPC=movl_m32_imm32  
  nop                                           #  5     0x6294d  1      OPC=nop             
  nop                                           #  6     0x6294e  1      OPC=nop             
  nop                                           #  7     0x6294f  1      OPC=nop             
  nop                                           #  8     0x62950  1      OPC=nop             
  nop                                           #  9     0x62951  1      OPC=nop             
  nop                                           #  10    0x62952  1      OPC=nop             
  nop                                           #  11    0x62953  1      OPC=nop             
  nop                                           #  12    0x62954  1      OPC=nop             
  nop                                           #  13    0x62955  1      OPC=nop             
  nop                                           #  14    0x62956  1      OPC=nop             
  nop                                           #  15    0x62957  1      OPC=nop             
  nop                                           #  16    0x62958  1      OPC=nop             
  nop                                           #  17    0x62959  1      OPC=nop             
  nop                                           #  18    0x6295a  1      OPC=nop             
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x6295b  5      OPC=callq_label     
  nop                                           #  20    0x62960  1      OPC=nop             
  nop                                           #  21    0x62961  1      OPC=nop             
  nop                                           #  22    0x62962  1      OPC=nop             
  nop                                           #  23    0x62963  1      OPC=nop             
  nop                                           #  24    0x62964  1      OPC=nop             
  nop                                           #  25    0x62965  1      OPC=nop             
  nop                                           #  26    0x62966  1      OPC=nop             
  nop                                           #  27    0x62967  1      OPC=nop             
  nop                                           #  28    0x62968  1      OPC=nop             
  nop                                           #  29    0x62969  1      OPC=nop             
  nop                                           #  30    0x6296a  1      OPC=nop             
  nop                                           #  31    0x6296b  1      OPC=nop             
  nop                                           #  32    0x6296c  1      OPC=nop             
  nop                                           #  33    0x6296d  1      OPC=nop             
  nop                                           #  34    0x6296e  1      OPC=nop             
  nop                                           #  35    0x6296f  1      OPC=nop             
  nop                                           #  36    0x62970  1      OPC=nop             
  nop                                           #  37    0x62971  1      OPC=nop             
  nop                                           #  38    0x62972  1      OPC=nop             
  nop                                           #  39    0x62973  1      OPC=nop             
  nop                                           #  40    0x62974  1      OPC=nop             
  nop                                           #  41    0x62975  1      OPC=nop             
  nop                                           #  42    0x62976  1      OPC=nop             
  nop                                           #  43    0x62977  1      OPC=nop             
  nop                                           #  44    0x62978  1      OPC=nop             
  nop                                           #  45    0x62979  1      OPC=nop             
  nop                                           #  46    0x6297a  1      OPC=nop             
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x6297b  5      OPC=callq_label     
  movl 0x1000fca2(%rip), %eax                   #  48    0x62980  6      OPC=movl_r32_m32    
  movl %eax, %eax                               #  49    0x62986  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)                      #  50    0x62988  5      OPC=addl_m32_imm8   
  movl %ebx, %ebx                               #  51    0x6298d  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                      #  52    0x6298f  4      OPC=movl_m32_r32    
  popq %rbx                                     #  53    0x62993  1      OPC=popq_r64_1      
  popq %r11                                     #  54    0x62994  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  55    0x62996  7      OPC=andl_r32_imm32  
  nop                                           #  56    0x6299d  1      OPC=nop             
  nop                                           #  57    0x6299e  1      OPC=nop             
  nop                                           #  58    0x6299f  1      OPC=nop             
  nop                                           #  59    0x629a0  1      OPC=nop             
  addq %r15, %r11                               #  60    0x629a1  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  61    0x629a4  3      OPC=jmpq_r64        
  cmpq $0xff, %rdx                              #  62    0x629a7  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                               #  63    0x629ab  2      OPC=movl_r32_r32    
  je .L_629c0                                   #  64    0x629ad  2      OPC=je_label        
  nop                                           #  65    0x629af  1      OPC=nop             
  nop                                           #  66    0x629b0  1      OPC=nop             
  nop                                           #  67    0x629b1  1      OPC=nop             
  nop                                           #  68    0x629b2  1      OPC=nop             
  nop                                           #  69    0x629b3  1      OPC=nop             
  nop                                           #  70    0x629b4  1      OPC=nop             
  nop                                           #  71    0x629b5  1      OPC=nop             
  nop                                           #  72    0x629b6  1      OPC=nop             
  nop                                           #  73    0x629b7  1      OPC=nop             
  nop                                           #  74    0x629b8  1      OPC=nop             
  nop                                           #  75    0x629b9  1      OPC=nop             
  nop                                           #  76    0x629ba  1      OPC=nop             
  nop                                           #  77    0x629bb  1      OPC=nop             
  nop                                           #  78    0x629bc  1      OPC=nop             
  nop                                           #  79    0x629bd  1      OPC=nop             
  nop                                           #  80    0x629be  1      OPC=nop             
  nop                                           #  81    0x629bf  1      OPC=nop             
  nop                                           #  82    0x629c0  1      OPC=nop             
  nop                                           #  83    0x629c1  1      OPC=nop             
  callq ._Unwind_Resume                         #  84    0x629c2  5      OPC=callq_label     
.L_629c0:                                       #        0x629c7  0      OPC=<label>         
  nop                                           #  85    0x629c7  1      OPC=nop             
  nop                                           #  86    0x629c8  1      OPC=nop             
  nop                                           #  87    0x629c9  1      OPC=nop             
  nop                                           #  88    0x629ca  1      OPC=nop             
  nop                                           #  89    0x629cb  1      OPC=nop             
  nop                                           #  90    0x629cc  1      OPC=nop             
  nop                                           #  91    0x629cd  1      OPC=nop             
  nop                                           #  92    0x629ce  1      OPC=nop             
  nop                                           #  93    0x629cf  1      OPC=nop             
  nop                                           #  94    0x629d0  1      OPC=nop             
  nop                                           #  95    0x629d1  1      OPC=nop             
  nop                                           #  96    0x629d2  1      OPC=nop             
  nop                                           #  97    0x629d3  1      OPC=nop             
  nop                                           #  98    0x629d4  1      OPC=nop             
  nop                                           #  99    0x629d5  1      OPC=nop             
  nop                                           #  100   0x629d6  1      OPC=nop             
  nop                                           #  101   0x629d7  1      OPC=nop             
  nop                                           #  102   0x629d8  1      OPC=nop             
  nop                                           #  103   0x629d9  1      OPC=nop             
  nop                                           #  104   0x629da  1      OPC=nop             
  nop                                           #  105   0x629db  1      OPC=nop             
  nop                                           #  106   0x629dc  1      OPC=nop             
  nop                                           #  107   0x629dd  1      OPC=nop             
  nop                                           #  108   0x629de  1      OPC=nop             
  nop                                           #  109   0x629df  1      OPC=nop             
  nop                                           #  110   0x629e0  1      OPC=nop             
  nop                                           #  111   0x629e1  1      OPC=nop             
  callq .__cxa_call_unexpected                  #  112   0x629e2  5      OPC=callq_label     
                                                                                             
.size _ZNSt6localeC2Ev, .-_ZNSt6localeC2Ev

