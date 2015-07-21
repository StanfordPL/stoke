  .text
  .globl _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_
  .type _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_, @function

#! file-offset 0xe76a0
#! rip-offset  0xa76a0
#! capacity    160 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode    
._ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_:  #        0xa76a0  0      OPC=0     
  pushq %rbx                                                  #  1     0xa76a0  1      OPC=1861  
  movl %edi, %ebx                                             #  2     0xa76a1  2      OPC=1157  
  movl %ebx, %ebx                                             #  3     0xa76a3  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                    #  4     0xa76a5  4      OPC=1156  
  subl $0xc, %eax                                             #  5     0xa76a9  3      OPC=2384  
  movl %eax, %eax                                             #  6     0xa76ac  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                    #  7     0xa76ae  4      OPC=1156  
  addl %ebx, %eax                                             #  8     0xa76b2  2      OPC=67    
  movl %eax, %eax                                             #  9     0xa76b4  2      OPC=1157  
  movl 0x80(%r15,%rax,1), %edi                                #  10    0xa76b6  8      OPC=1156  
  xchgw %ax, %ax                                              #  11    0xa76be  2      OPC=3700  
  testq %rdi, %rdi                                            #  12    0xa76c0  3      OPC=2438  
  je .L_a7720                                                 #  13    0xa76c3  6      OPC=893   
  nop                                                         #  14    0xa76c9  1      OPC=1343  
  nop                                                         #  15    0xa76ca  1      OPC=1343  
  movl %edi, %edi                                             #  16    0xa76cb  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                    #  17    0xa76cd  4      OPC=1156  
  movl $0xa, %esi                                             #  18    0xa76d1  5      OPC=1154  
  movl %eax, %eax                                             #  19    0xa76d6  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                                #  20    0xa76d8  5      OPC=1156  
  nop                                                         #  21    0xa76dd  1      OPC=1343  
  andl $0xffffffe0, %eax                                      #  22    0xa76de  6      OPC=131   
  nop                                                         #  23    0xa76e4  1      OPC=1343  
  nop                                                         #  24    0xa76e5  1      OPC=1343  
  nop                                                         #  25    0xa76e6  1      OPC=1343  
  addq %r15, %rax                                             #  26    0xa76e7  3      OPC=72    
  callq %rax                                                  #  27    0xa76ea  2      OPC=258   
  movl %ebx, %edi                                             #  28    0xa76ec  2      OPC=1157  
  movl %eax, %esi                                             #  29    0xa76ee  2      OPC=1157  
  nop                                                         #  30    0xa76f0  1      OPC=1343  
  nop                                                         #  31    0xa76f1  1      OPC=1343  
  nop                                                         #  32    0xa76f2  1      OPC=1343  
  nop                                                         #  33    0xa76f3  1      OPC=1343  
  nop                                                         #  34    0xa76f4  1      OPC=1343  
  nop                                                         #  35    0xa76f5  1      OPC=1343  
  nop                                                         #  36    0xa76f6  1      OPC=1343  
  nop                                                         #  37    0xa76f7  1      OPC=1343  
  nop                                                         #  38    0xa76f8  1      OPC=1343  
  nop                                                         #  39    0xa76f9  1      OPC=1343  
  nop                                                         #  40    0xa76fa  1      OPC=1343  
  nop                                                         #  41    0xa76fb  1      OPC=1343  
  nop                                                         #  42    0xa76fc  1      OPC=1343  
  nop                                                         #  43    0xa76fd  1      OPC=1343  
  nop                                                         #  44    0xa76fe  1      OPC=1343  
  nop                                                         #  45    0xa76ff  1      OPC=1343  
  nop                                                         #  46    0xa7700  1      OPC=1343  
  nop                                                         #  47    0xa7701  1      OPC=1343  
  nop                                                         #  48    0xa7702  1      OPC=1343  
  nop                                                         #  49    0xa7703  1      OPC=1343  
  nop                                                         #  50    0xa7704  1      OPC=1343  
  nop                                                         #  51    0xa7705  1      OPC=1343  
  nop                                                         #  52    0xa7706  1      OPC=1343  
  callq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE3putEw      #  53    0xa7707  5      OPC=260   
  popq %rbx                                                   #  54    0xa770c  1      OPC=1694  
  movl %eax, %edi                                             #  55    0xa770d  2      OPC=1157  
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE5flushEv     #  56    0xa770f  5      OPC=930   
  nop                                                         #  57    0xa7714  1      OPC=1343  
  nop                                                         #  58    0xa7715  1      OPC=1343  
  nop                                                         #  59    0xa7716  1      OPC=1343  
  nop                                                         #  60    0xa7717  1      OPC=1343  
  nop                                                         #  61    0xa7718  1      OPC=1343  
  nop                                                         #  62    0xa7719  1      OPC=1343  
  nop                                                         #  63    0xa771a  1      OPC=1343  
  nop                                                         #  64    0xa771b  1      OPC=1343  
  nop                                                         #  65    0xa771c  1      OPC=1343  
  nop                                                         #  66    0xa771d  1      OPC=1343  
  nop                                                         #  67    0xa771e  1      OPC=1343  
  nop                                                         #  68    0xa771f  1      OPC=1343  
  nop                                                         #  69    0xa7720  1      OPC=1343  
  nop                                                         #  70    0xa7721  1      OPC=1343  
  nop                                                         #  71    0xa7722  1      OPC=1343  
  nop                                                         #  72    0xa7723  1      OPC=1343  
  nop                                                         #  73    0xa7724  1      OPC=1343  
  nop                                                         #  74    0xa7725  1      OPC=1343  
  nop                                                         #  75    0xa7726  1      OPC=1343  
  nop                                                         #  76    0xa7727  1      OPC=1343  
  nop                                                         #  77    0xa7728  1      OPC=1343  
  nop                                                         #  78    0xa7729  1      OPC=1343  
  nop                                                         #  79    0xa772a  1      OPC=1343  
  nop                                                         #  80    0xa772b  1      OPC=1343  
.L_a7720:                                                     #        0xa772c  0      OPC=0     
  nop                                                         #  81    0xa772c  1      OPC=1343  
  nop                                                         #  82    0xa772d  1      OPC=1343  
  nop                                                         #  83    0xa772e  1      OPC=1343  
  nop                                                         #  84    0xa772f  1      OPC=1343  
  nop                                                         #  85    0xa7730  1      OPC=1343  
  nop                                                         #  86    0xa7731  1      OPC=1343  
  nop                                                         #  87    0xa7732  1      OPC=1343  
  nop                                                         #  88    0xa7733  1      OPC=1343  
  nop                                                         #  89    0xa7734  1      OPC=1343  
  nop                                                         #  90    0xa7735  1      OPC=1343  
  nop                                                         #  91    0xa7736  1      OPC=1343  
  nop                                                         #  92    0xa7737  1      OPC=1343  
  nop                                                         #  93    0xa7738  1      OPC=1343  
  nop                                                         #  94    0xa7739  1      OPC=1343  
  nop                                                         #  95    0xa773a  1      OPC=1343  
  nop                                                         #  96    0xa773b  1      OPC=1343  
  nop                                                         #  97    0xa773c  1      OPC=1343  
  nop                                                         #  98    0xa773d  1      OPC=1343  
  nop                                                         #  99    0xa773e  1      OPC=1343  
  nop                                                         #  100   0xa773f  1      OPC=1343  
  nop                                                         #  101   0xa7740  1      OPC=1343  
  nop                                                         #  102   0xa7741  1      OPC=1343  
  nop                                                         #  103   0xa7742  1      OPC=1343  
  nop                                                         #  104   0xa7743  1      OPC=1343  
  nop                                                         #  105   0xa7744  1      OPC=1343  
  nop                                                         #  106   0xa7745  1      OPC=1343  
  nop                                                         #  107   0xa7746  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                              #  108   0xa7747  5      OPC=260   
                                                                                                 
.size _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_, .-_ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_

