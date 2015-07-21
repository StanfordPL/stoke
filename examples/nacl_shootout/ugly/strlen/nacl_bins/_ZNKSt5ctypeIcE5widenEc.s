  .text
  .globl _ZNKSt5ctypeIcE5widenEc
  .type _ZNKSt5ctypeIcE5widenEc, @function

#! file-offset 0xb9740
#! rip-offset  0x79740
#! capacity    192 bytes

# Text                                     #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIcE5widenEc:                  #        0x79740  0      OPC=0     
  movq %rbx, -0x10(%rsp)                   #  1     0x79740  5      OPC=1138  
  movl %edi, %ebx                          #  2     0x79745  2      OPC=1157  
  movq %r12, -0x8(%rsp)                    #  3     0x79747  5      OPC=1138  
  subl $0x18, %esp                         #  4     0x7974c  3      OPC=2384  
  addq %r15, %rsp                          #  5     0x7974f  3      OPC=72    
  movl %ebx, %ebx                          #  6     0x79752  2      OPC=1157  
  cmpb $0x0, 0x1c(%r15,%rbx,1)             #  7     0x79754  6      OPC=461   
  movl %esi, %r12d                         #  8     0x7975a  3      OPC=1157  
  nop                                      #  9     0x7975d  1      OPC=1343  
  nop                                      #  10    0x7975e  1      OPC=1343  
  nop                                      #  11    0x7975f  1      OPC=1343  
  je .L_797a0                              #  12    0x79760  6      OPC=893   
  nop                                      #  13    0x79766  1      OPC=1343  
  nop                                      #  14    0x79767  1      OPC=1343  
  movzbl %sil, %r12d                       #  15    0x79768  4      OPC=1304  
  leaq 0x10(%rbx,%r12,1), %rax             #  16    0x7976c  5      OPC=1069  
  movq 0x8(%rsp), %rbx                     #  17    0x79771  5      OPC=1161  
  movq 0x10(%rsp), %r12                    #  18    0x79776  5      OPC=1161  
  movl %eax, %eax                          #  19    0x7977b  2      OPC=1157  
  movzbl 0xd(%r15,%rax,1), %eax            #  20    0x7977d  6      OPC=1302  
  nop                                      #  21    0x79783  1      OPC=1343  
  nop                                      #  22    0x79784  1      OPC=1343  
  nop                                      #  23    0x79785  1      OPC=1343  
  addl $0x18, %esp                         #  24    0x79786  3      OPC=65    
  addq %r15, %rsp                          #  25    0x79789  3      OPC=72    
  popq %r11                                #  26    0x7978c  2      OPC=1694  
  andl $0xffffffe0, %r11d                  #  27    0x7978e  7      OPC=131   
  nop                                      #  28    0x79795  1      OPC=1343  
  nop                                      #  29    0x79796  1      OPC=1343  
  nop                                      #  30    0x79797  1      OPC=1343  
  nop                                      #  31    0x79798  1      OPC=1343  
  addq %r15, %r11                          #  32    0x79799  3      OPC=72    
  jmpq %r11                                #  33    0x7979c  3      OPC=928   
  nop                                      #  34    0x7979f  1      OPC=1343  
  nop                                      #  35    0x797a0  1      OPC=1343  
  nop                                      #  36    0x797a1  1      OPC=1343  
  nop                                      #  37    0x797a2  1      OPC=1343  
  nop                                      #  38    0x797a3  1      OPC=1343  
  nop                                      #  39    0x797a4  1      OPC=1343  
  nop                                      #  40    0x797a5  1      OPC=1343  
  nop                                      #  41    0x797a6  1      OPC=1343  
  nop                                      #  42    0x797a7  1      OPC=1343  
  nop                                      #  43    0x797a8  1      OPC=1343  
  nop                                      #  44    0x797a9  1      OPC=1343  
  nop                                      #  45    0x797aa  1      OPC=1343  
  nop                                      #  46    0x797ab  1      OPC=1343  
  nop                                      #  47    0x797ac  1      OPC=1343  
.L_797a0:                                  #        0x797ad  0      OPC=0     
  movl %ebx, %edi                          #  48    0x797ad  2      OPC=1157  
  nop                                      #  49    0x797af  1      OPC=1343  
  nop                                      #  50    0x797b0  1      OPC=1343  
  nop                                      #  51    0x797b1  1      OPC=1343  
  nop                                      #  52    0x797b2  1      OPC=1343  
  nop                                      #  53    0x797b3  1      OPC=1343  
  nop                                      #  54    0x797b4  1      OPC=1343  
  nop                                      #  55    0x797b5  1      OPC=1343  
  nop                                      #  56    0x797b6  1      OPC=1343  
  nop                                      #  57    0x797b7  1      OPC=1343  
  nop                                      #  58    0x797b8  1      OPC=1343  
  nop                                      #  59    0x797b9  1      OPC=1343  
  nop                                      #  60    0x797ba  1      OPC=1343  
  nop                                      #  61    0x797bb  1      OPC=1343  
  nop                                      #  62    0x797bc  1      OPC=1343  
  nop                                      #  63    0x797bd  1      OPC=1343  
  nop                                      #  64    0x797be  1      OPC=1343  
  nop                                      #  65    0x797bf  1      OPC=1343  
  nop                                      #  66    0x797c0  1      OPC=1343  
  nop                                      #  67    0x797c1  1      OPC=1343  
  nop                                      #  68    0x797c2  1      OPC=1343  
  nop                                      #  69    0x797c3  1      OPC=1343  
  nop                                      #  70    0x797c4  1      OPC=1343  
  nop                                      #  71    0x797c5  1      OPC=1343  
  nop                                      #  72    0x797c6  1      OPC=1343  
  nop                                      #  73    0x797c7  1      OPC=1343  
  callq ._ZNKSt5ctypeIcE13_M_widen_initEv  #  74    0x797c8  5      OPC=260   
  movl %ebx, %ebx                          #  75    0x797cd  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                 #  76    0x797cf  4      OPC=1156  
  movsbl %r12b, %esi                       #  77    0x797d3  4      OPC=1282  
  movl %ebx, %edi                          #  78    0x797d7  2      OPC=1157  
  movq 0x10(%rsp), %r12                    #  79    0x797d9  5      OPC=1161  
  movq 0x8(%rsp), %rbx                     #  80    0x797de  5      OPC=1161  
  movl %eax, %eax                          #  81    0x797e3  2      OPC=1157  
  movl 0x18(%r15,%rax,1), %eax             #  82    0x797e5  5      OPC=1156  
  nop                                      #  83    0x797ea  1      OPC=1343  
  nop                                      #  84    0x797eb  1      OPC=1343  
  nop                                      #  85    0x797ec  1      OPC=1343  
  addl $0x18, %esp                         #  86    0x797ed  3      OPC=65    
  addq %r15, %rsp                          #  87    0x797f0  3      OPC=72    
  andl $0xffffffe0, %eax                   #  88    0x797f3  6      OPC=131   
  nop                                      #  89    0x797f9  1      OPC=1343  
  nop                                      #  90    0x797fa  1      OPC=1343  
  nop                                      #  91    0x797fb  1      OPC=1343  
  addq %r15, %rax                          #  92    0x797fc  3      OPC=72    
  jmpq %rax                                #  93    0x797ff  2      OPC=928   
  nop                                      #  94    0x79801  1      OPC=1343  
  nop                                      #  95    0x79802  1      OPC=1343  
  nop                                      #  96    0x79803  1      OPC=1343  
  nop                                      #  97    0x79804  1      OPC=1343  
  nop                                      #  98    0x79805  1      OPC=1343  
  nop                                      #  99    0x79806  1      OPC=1343  
  nop                                      #  100   0x79807  1      OPC=1343  
  nop                                      #  101   0x79808  1      OPC=1343  
  nop                                      #  102   0x79809  1      OPC=1343  
  nop                                      #  103   0x7980a  1      OPC=1343  
  nop                                      #  104   0x7980b  1      OPC=1343  
  nop                                      #  105   0x7980c  1      OPC=1343  
  nop                                      #  106   0x7980d  1      OPC=1343  
  nop                                      #  107   0x7980e  1      OPC=1343  
  nop                                      #  108   0x7980f  1      OPC=1343  
  nop                                      #  109   0x79810  1      OPC=1343  
  nop                                      #  110   0x79811  1      OPC=1343  
  nop                                      #  111   0x79812  1      OPC=1343  
                                                                              
.size _ZNKSt5ctypeIcE5widenEc, .-_ZNKSt5ctypeIcE5widenEc

