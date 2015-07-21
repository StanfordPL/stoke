  .text
  .globl AddConstraint
  .type AddConstraint, @function

#! file-offset 0x68820
#! rip-offset  0x28820
#! capacity    160 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
.AddConstraint:                   #        0x28820  0      OPC=0     
  pushq %r14                      #  1     0x28820  2      OPC=1861  
  pushq %r13                      #  2     0x28822  2      OPC=1861  
  pushq %r12                      #  3     0x28824  2      OPC=1861  
  pushq %rbx                      #  4     0x28826  1      OPC=1861  
  subl $0x8, %esp                 #  5     0x28827  3      OPC=2384  
  addq %r15, %rsp                 #  6     0x2882a  3      OPC=72    
  movl %edi, %r13d                #  7     0x2882d  3      OPC=1157  
  movl %r13d, %r13d               #  8     0x28830  3      OPC=1157  
  movsbl 0xe(%r15,%r13,1), %r12d  #  9     0x28833  6      OPC=1280  
  movl %r12d, %r14d               #  10    0x28839  3      OPC=1157  
  subl $0x1, %r14d                #  11    0x2883c  4      OPC=2384  
  js .L_288a0                     #  12    0x28840  6      OPC=1043  
  nop                             #  13    0x28846  1      OPC=1343  
  nop                             #  14    0x28847  1      OPC=1343  
  leal 0x14(%r13,%r12,4), %r12d   #  15    0x28848  5      OPC=1066  
  xorl %ebx, %ebx                 #  16    0x2884d  2      OPC=3758  
  nop                             #  17    0x2884f  1      OPC=1343  
  nop                             #  18    0x28850  1      OPC=1343  
  nop                             #  19    0x28851  1      OPC=1343  
  nop                             #  20    0x28852  1      OPC=1343  
  nop                             #  21    0x28853  1      OPC=1343  
  nop                             #  22    0x28854  1      OPC=1343  
  nop                             #  23    0x28855  1      OPC=1343  
  nop                             #  24    0x28856  1      OPC=1343  
  nop                             #  25    0x28857  1      OPC=1343  
  nop                             #  26    0x28858  1      OPC=1343  
  nop                             #  27    0x28859  1      OPC=1343  
  nop                             #  28    0x2885a  1      OPC=1343  
  nop                             #  29    0x2885b  1      OPC=1343  
  nop                             #  30    0x2885c  1      OPC=1343  
  nop                             #  31    0x2885d  1      OPC=1343  
  nop                             #  32    0x2885e  1      OPC=1343  
  nop                             #  33    0x2885f  1      OPC=1343  
  nop                             #  34    0x28860  1      OPC=1343  
  nop                             #  35    0x28861  1      OPC=1343  
  nop                             #  36    0x28862  1      OPC=1343  
  nop                             #  37    0x28863  1      OPC=1343  
  nop                             #  38    0x28864  1      OPC=1343  
  nop                             #  39    0x28865  1      OPC=1343  
.L_28860:                         #        0x28866  0      OPC=0     
  movl %r12d, %eax                #  40    0x28866  3      OPC=1157  
  movl %eax, %eax                 #  41    0x28869  2      OPC=1157  
  movl (%r15,%rax,1), %eax        #  42    0x2886b  4      OPC=1156  
  movl %eax, %eax                 #  43    0x2886f  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %edi     #  44    0x28871  5      OPC=1156  
  movl %r13d, %esi                #  45    0x28876  3      OPC=1157  
  nop                             #  46    0x28879  1      OPC=1343  
  nop                             #  47    0x2887a  1      OPC=1343  
  nop                             #  48    0x2887b  1      OPC=1343  
  nop                             #  49    0x2887c  1      OPC=1343  
  nop                             #  50    0x2887d  1      OPC=1343  
  nop                             #  51    0x2887e  1      OPC=1343  
  nop                             #  52    0x2887f  1      OPC=1343  
  nop                             #  53    0x28880  1      OPC=1343  
  callq .List_Add                 #  54    0x28881  5      OPC=260   
  addl $0x1, %ebx                 #  55    0x28886  3      OPC=65    
  subl $0x4, %r12d                #  56    0x28889  4      OPC=2384  
  cmpl %ebx, %r14d                #  57    0x2888d  3      OPC=472   
  jns .L_28860                    #  58    0x28890  6      OPC=1005  
  nop                             #  59    0x28896  1      OPC=1343  
  nop                             #  60    0x28897  1      OPC=1343  
  nop                             #  61    0x28898  1      OPC=1343  
  nop                             #  62    0x28899  1      OPC=1343  
  nop                             #  63    0x2889a  1      OPC=1343  
  nop                             #  64    0x2889b  1      OPC=1343  
  nop                             #  65    0x2889c  1      OPC=1343  
  nop                             #  66    0x2889d  1      OPC=1343  
  nop                             #  67    0x2889e  1      OPC=1343  
  nop                             #  68    0x2889f  1      OPC=1343  
  nop                             #  69    0x288a0  1      OPC=1343  
  nop                             #  70    0x288a1  1      OPC=1343  
  nop                             #  71    0x288a2  1      OPC=1343  
  nop                             #  72    0x288a3  1      OPC=1343  
  nop                             #  73    0x288a4  1      OPC=1343  
  nop                             #  74    0x288a5  1      OPC=1343  
  nop                             #  75    0x288a6  1      OPC=1343  
  nop                             #  76    0x288a7  1      OPC=1343  
  nop                             #  77    0x288a8  1      OPC=1343  
  nop                             #  78    0x288a9  1      OPC=1343  
  nop                             #  79    0x288aa  1      OPC=1343  
  nop                             #  80    0x288ab  1      OPC=1343  
.L_288a0:                         #        0x288ac  0      OPC=0     
  movl %r13d, %r13d               #  81    0x288ac  3      OPC=1157  
  movb $0xff, 0xc(%r15,%r13,1)    #  82    0x288af  6      OPC=1140  
  movl %r13d, %edi                #  83    0x288b5  3      OPC=1157  
  addl $0x8, %esp                 #  84    0x288b8  3      OPC=65    
  addq %r15, %rsp                 #  85    0x288bb  3      OPC=72    
  popq %rbx                       #  86    0x288be  1      OPC=1694  
  popq %r12                       #  87    0x288bf  2      OPC=1694  
  popq %r13                       #  88    0x288c1  2      OPC=1694  
  popq %r14                       #  89    0x288c3  2      OPC=1694  
  jmpq .IncrementalAdd            #  90    0x288c5  5      OPC=930   
  xchgw %ax, %ax                  #  91    0x288ca  2      OPC=3700  
                                                                     
.size AddConstraint, .-AddConstraint

