  .text
  .globl mbrlen
  .type mbrlen, @function

#! file-offset 0x197980
#! rip-offset  0x157980
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.mbrlen:                    #        0x157980  0      OPC=0     
  pushq %rbx                #  1     0x157980  1      OPC=1861  
  movl %edx, %ecx           #  2     0x157981  2      OPC=1157  
  movl %edi, %ebx           #  3     0x157983  2      OPC=1157  
  subl $0x10, %esp          #  4     0x157985  3      OPC=2384  
  addq %r15, %rsp           #  5     0x157988  3      OPC=72    
  testq %rcx, %rcx          #  6     0x15798b  3      OPC=2438  
  je .L_1579c0              #  7     0x15798e  6      OPC=893   
  nop                       #  8     0x157994  1      OPC=1343  
  nop                       #  9     0x157995  1      OPC=1343  
  movl %esi, %edx           #  10    0x157996  2      OPC=1157  
  addl $0x10, %esp          #  11    0x157998  3      OPC=65    
  addq %r15, %rsp           #  12    0x15799b  3      OPC=72    
  movl %ebx, %esi           #  13    0x15799e  2      OPC=1157  
  popq %rbx                 #  14    0x1579a0  1      OPC=1694  
  xorl %edi, %edi           #  15    0x1579a1  2      OPC=3758  
  nop                       #  16    0x1579a3  1      OPC=1343  
  nop                       #  17    0x1579a4  1      OPC=1343  
  nop                       #  18    0x1579a5  1      OPC=1343  
  jmpq .mbrtowc             #  19    0x1579a6  5      OPC=930   
  nop                       #  20    0x1579ab  1      OPC=1343  
  nop                       #  21    0x1579ac  1      OPC=1343  
  nop                       #  22    0x1579ad  1      OPC=1343  
  nop                       #  23    0x1579ae  1      OPC=1343  
  nop                       #  24    0x1579af  1      OPC=1343  
  nop                       #  25    0x1579b0  1      OPC=1343  
  nop                       #  26    0x1579b1  1      OPC=1343  
  nop                       #  27    0x1579b2  1      OPC=1343  
  nop                       #  28    0x1579b3  1      OPC=1343  
  nop                       #  29    0x1579b4  1      OPC=1343  
  nop                       #  30    0x1579b5  1      OPC=1343  
  nop                       #  31    0x1579b6  1      OPC=1343  
  nop                       #  32    0x1579b7  1      OPC=1343  
  nop                       #  33    0x1579b8  1      OPC=1343  
  nop                       #  34    0x1579b9  1      OPC=1343  
  nop                       #  35    0x1579ba  1      OPC=1343  
  nop                       #  36    0x1579bb  1      OPC=1343  
  nop                       #  37    0x1579bc  1      OPC=1343  
  nop                       #  38    0x1579bd  1      OPC=1343  
  nop                       #  39    0x1579be  1      OPC=1343  
  nop                       #  40    0x1579bf  1      OPC=1343  
  nop                       #  41    0x1579c0  1      OPC=1343  
  nop                       #  42    0x1579c1  1      OPC=1343  
  nop                       #  43    0x1579c2  1      OPC=1343  
  nop                       #  44    0x1579c3  1      OPC=1343  
  nop                       #  45    0x1579c4  1      OPC=1343  
  nop                       #  46    0x1579c5  1      OPC=1343  
.L_1579c0:                  #        0x1579c6  0      OPC=0     
  movl %esi, 0x8(%rsp)      #  47    0x1579c6  4      OPC=1136  
  nop                       #  48    0x1579ca  1      OPC=1343  
  nop                       #  49    0x1579cb  1      OPC=1343  
  nop                       #  50    0x1579cc  1      OPC=1343  
  nop                       #  51    0x1579cd  1      OPC=1343  
  nop                       #  52    0x1579ce  1      OPC=1343  
  nop                       #  53    0x1579cf  1      OPC=1343  
  nop                       #  54    0x1579d0  1      OPC=1343  
  nop                       #  55    0x1579d1  1      OPC=1343  
  nop                       #  56    0x1579d2  1      OPC=1343  
  nop                       #  57    0x1579d3  1      OPC=1343  
  nop                       #  58    0x1579d4  1      OPC=1343  
  nop                       #  59    0x1579d5  1      OPC=1343  
  nop                       #  60    0x1579d6  1      OPC=1343  
  nop                       #  61    0x1579d7  1      OPC=1343  
  nop                       #  62    0x1579d8  1      OPC=1343  
  nop                       #  63    0x1579d9  1      OPC=1343  
  nop                       #  64    0x1579da  1      OPC=1343  
  nop                       #  65    0x1579db  1      OPC=1343  
  nop                       #  66    0x1579dc  1      OPC=1343  
  nop                       #  67    0x1579dd  1      OPC=1343  
  nop                       #  68    0x1579de  1      OPC=1343  
  nop                       #  69    0x1579df  1      OPC=1343  
  nop                       #  70    0x1579e0  1      OPC=1343  
  callq .__nacl_read_tp     #  71    0x1579e1  5      OPC=260   
  leaq -0x480(%rax), %rax   #  72    0x1579e6  7      OPC=1069  
  movl 0x8(%rsp), %esi      #  73    0x1579ed  4      OPC=1156  
  xorl %edi, %edi           #  74    0x1579f1  2      OPC=3758  
  movl %esi, %edx           #  75    0x1579f3  2      OPC=1157  
  movl %ebx, %esi           #  76    0x1579f5  2      OPC=1157  
  movl %eax, %eax           #  77    0x1579f7  2      OPC=1157  
  movl (%r15,%rax,1), %ecx  #  78    0x1579f9  4      OPC=1156  
  addl $0x10, %esp          #  79    0x1579fd  3      OPC=65    
  addq %r15, %rsp           #  80    0x157a00  3      OPC=72    
  popq %rbx                 #  81    0x157a03  1      OPC=1694  
  xchgw %ax, %ax            #  82    0x157a04  2      OPC=3700  
  addl $0xfc, %ecx          #  83    0x157a06  6      OPC=64    
  jmpq .mbrtowc             #  84    0x157a0c  5      OPC=930   
  nop                       #  85    0x157a11  1      OPC=1343  
  nop                       #  86    0x157a12  1      OPC=1343  
  nop                       #  87    0x157a13  1      OPC=1343  
  nop                       #  88    0x157a14  1      OPC=1343  
  nop                       #  89    0x157a15  1      OPC=1343  
  nop                       #  90    0x157a16  1      OPC=1343  
  nop                       #  91    0x157a17  1      OPC=1343  
  nop                       #  92    0x157a18  1      OPC=1343  
  nop                       #  93    0x157a19  1      OPC=1343  
  nop                       #  94    0x157a1a  1      OPC=1343  
  nop                       #  95    0x157a1b  1      OPC=1343  
  nop                       #  96    0x157a1c  1      OPC=1343  
  nop                       #  97    0x157a1d  1      OPC=1343  
  nop                       #  98    0x157a1e  1      OPC=1343  
  nop                       #  99    0x157a1f  1      OPC=1343  
  nop                       #  100   0x157a20  1      OPC=1343  
  nop                       #  101   0x157a21  1      OPC=1343  
  nop                       #  102   0x157a22  1      OPC=1343  
  nop                       #  103   0x157a23  1      OPC=1343  
  nop                       #  104   0x157a24  1      OPC=1343  
  nop                       #  105   0x157a25  1      OPC=1343  
                                                                
.size mbrlen, .-mbrlen

