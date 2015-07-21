  .text
  .globl __cxa_throw
  .type __cxa_throw, @function

#! file-offset 0x1205a0
#! rip-offset  0xe05a0
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
.__cxa_throw:                       #        0xe05a0  0      OPC=0     
  movl 0xff9037e(%rip), %eax        #  1     0xe05a0  6      OPC=1156  
  pushq %rbx                        #  2     0xe05a6  1      OPC=1861  
  leal -0x60(%rdi), %ebx            #  3     0xe05a7  3      OPC=1066  
  movl %ebx, %ebx                   #  4     0xe05aa  2      OPC=1157  
  movl %esi, 0x10(%r15,%rbx,1)      #  5     0xe05ac  5      OPC=1136  
  movl %ebx, %ebx                   #  6     0xe05b1  2      OPC=1157  
  movl %edx, 0x14(%r15,%rbx,1)      #  7     0xe05b3  5      OPC=1136  
  movl %ebx, %ebx                   #  8     0xe05b8  2      OPC=1157  
  movl %eax, 0x18(%r15,%rbx,1)      #  9     0xe05ba  5      OPC=1136  
  nop                               #  10    0xe05bf  1      OPC=1343  
  movl 0xff90362(%rip), %eax        #  11    0xe05c0  6      OPC=1156  
  movl %ebx, %ebx                   #  12    0xe05c6  2      OPC=1157  
  movl $0x1, (%r15,%rbx,1)          #  13    0xe05c8  8      OPC=1135  
  movl %ebx, %ebx                   #  14    0xe05d0  2      OPC=1157  
  movl $0xe0660, 0x48(%r15,%rbx,1)  #  15    0xe05d2  9      OPC=1135  
  nop                               #  16    0xe05db  1      OPC=1343  
  nop                               #  17    0xe05dc  1      OPC=1343  
  nop                               #  18    0xe05dd  1      OPC=1343  
  nop                               #  19    0xe05de  1      OPC=1343  
  nop                               #  20    0xe05df  1      OPC=1343  
  movl %ebx, %ebx                   #  21    0xe05e0  2      OPC=1157  
  movl %eax, 0x1c(%r15,%rbx,1)      #  22    0xe05e2  5      OPC=1136  
  movq $0x474e5543432b2b00, %rax    #  23    0xe05e7  10     OPC=1160  
  movl %ebx, %ebx                   #  24    0xe05f1  2      OPC=1157  
  movq %rax, 0x40(%r15,%rbx,1)      #  25    0xe05f3  5      OPC=1138  
  addl $0x40, %ebx                  #  26    0xe05f8  3      OPC=65    
  movl %ebx, %edi                   #  27    0xe05fb  2      OPC=1157  
  nop                               #  28    0xe05fd  1      OPC=1343  
  nop                               #  29    0xe05fe  1      OPC=1343  
  nop                               #  30    0xe05ff  1      OPC=1343  
  nop                               #  31    0xe0600  1      OPC=1343  
  nop                               #  32    0xe0601  1      OPC=1343  
  nop                               #  33    0xe0602  1      OPC=1343  
  nop                               #  34    0xe0603  1      OPC=1343  
  nop                               #  35    0xe0604  1      OPC=1343  
  nop                               #  36    0xe0605  1      OPC=1343  
  nop                               #  37    0xe0606  1      OPC=1343  
  nop                               #  38    0xe0607  1      OPC=1343  
  nop                               #  39    0xe0608  1      OPC=1343  
  nop                               #  40    0xe0609  1      OPC=1343  
  nop                               #  41    0xe060a  1      OPC=1343  
  nop                               #  42    0xe060b  1      OPC=1343  
  nop                               #  43    0xe060c  1      OPC=1343  
  nop                               #  44    0xe060d  1      OPC=1343  
  nop                               #  45    0xe060e  1      OPC=1343  
  nop                               #  46    0xe060f  1      OPC=1343  
  nop                               #  47    0xe0610  1      OPC=1343  
  nop                               #  48    0xe0611  1      OPC=1343  
  nop                               #  49    0xe0612  1      OPC=1343  
  nop                               #  50    0xe0613  1      OPC=1343  
  nop                               #  51    0xe0614  1      OPC=1343  
  nop                               #  52    0xe0615  1      OPC=1343  
  nop                               #  53    0xe0616  1      OPC=1343  
  nop                               #  54    0xe0617  1      OPC=1343  
  nop                               #  55    0xe0618  1      OPC=1343  
  nop                               #  56    0xe0619  1      OPC=1343  
  nop                               #  57    0xe061a  1      OPC=1343  
  callq ._Unwind_RaiseException     #  58    0xe061b  5      OPC=260   
  movl %ebx, %edi                   #  59    0xe0620  2      OPC=1157  
  nop                               #  60    0xe0622  1      OPC=1343  
  nop                               #  61    0xe0623  1      OPC=1343  
  nop                               #  62    0xe0624  1      OPC=1343  
  nop                               #  63    0xe0625  1      OPC=1343  
  nop                               #  64    0xe0626  1      OPC=1343  
  nop                               #  65    0xe0627  1      OPC=1343  
  nop                               #  66    0xe0628  1      OPC=1343  
  nop                               #  67    0xe0629  1      OPC=1343  
  nop                               #  68    0xe062a  1      OPC=1343  
  nop                               #  69    0xe062b  1      OPC=1343  
  nop                               #  70    0xe062c  1      OPC=1343  
  nop                               #  71    0xe062d  1      OPC=1343  
  nop                               #  72    0xe062e  1      OPC=1343  
  nop                               #  73    0xe062f  1      OPC=1343  
  nop                               #  74    0xe0630  1      OPC=1343  
  nop                               #  75    0xe0631  1      OPC=1343  
  nop                               #  76    0xe0632  1      OPC=1343  
  nop                               #  77    0xe0633  1      OPC=1343  
  nop                               #  78    0xe0634  1      OPC=1343  
  nop                               #  79    0xe0635  1      OPC=1343  
  nop                               #  80    0xe0636  1      OPC=1343  
  nop                               #  81    0xe0637  1      OPC=1343  
  nop                               #  82    0xe0638  1      OPC=1343  
  nop                               #  83    0xe0639  1      OPC=1343  
  nop                               #  84    0xe063a  1      OPC=1343  
  callq .__cxa_begin_catch          #  85    0xe063b  5      OPC=260   
  nop                               #  86    0xe0640  1      OPC=1343  
  nop                               #  87    0xe0641  1      OPC=1343  
  nop                               #  88    0xe0642  1      OPC=1343  
  nop                               #  89    0xe0643  1      OPC=1343  
  nop                               #  90    0xe0644  1      OPC=1343  
  nop                               #  91    0xe0645  1      OPC=1343  
  nop                               #  92    0xe0646  1      OPC=1343  
  nop                               #  93    0xe0647  1      OPC=1343  
  nop                               #  94    0xe0648  1      OPC=1343  
  nop                               #  95    0xe0649  1      OPC=1343  
  nop                               #  96    0xe064a  1      OPC=1343  
  nop                               #  97    0xe064b  1      OPC=1343  
  nop                               #  98    0xe064c  1      OPC=1343  
  nop                               #  99    0xe064d  1      OPC=1343  
  nop                               #  100   0xe064e  1      OPC=1343  
  nop                               #  101   0xe064f  1      OPC=1343  
  nop                               #  102   0xe0650  1      OPC=1343  
  nop                               #  103   0xe0651  1      OPC=1343  
  nop                               #  104   0xe0652  1      OPC=1343  
  nop                               #  105   0xe0653  1      OPC=1343  
  nop                               #  106   0xe0654  1      OPC=1343  
  nop                               #  107   0xe0655  1      OPC=1343  
  nop                               #  108   0xe0656  1      OPC=1343  
  nop                               #  109   0xe0657  1      OPC=1343  
  nop                               #  110   0xe0658  1      OPC=1343  
  nop                               #  111   0xe0659  1      OPC=1343  
  nop                               #  112   0xe065a  1      OPC=1343  
  callq ._ZSt9terminatev            #  113   0xe065b  5      OPC=260   
                                                                       
.size __cxa_throw, .-__cxa_throw

