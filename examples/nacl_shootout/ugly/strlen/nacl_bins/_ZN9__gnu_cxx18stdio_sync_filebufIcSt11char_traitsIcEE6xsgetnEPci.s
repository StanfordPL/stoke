  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, @function

#! file-offset 0xdb260
#! rip-offset  0x9b260
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci:  #        0x9b260  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                             #  1     0x9b260  5      OPC=1138  
  movl %edi, %ebx                                                    #  2     0x9b265  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                              #  3     0x9b267  5      OPC=1138  
  subl $0x18, %esp                                                   #  4     0x9b26c  3      OPC=2384  
  addq %r15, %rsp                                                    #  5     0x9b26f  3      OPC=72    
  movl %ebx, %ebx                                                    #  6     0x9b272  2      OPC=1157  
  movl 0x20(%r15,%rbx,1), %ecx                                       #  7     0x9b274  5      OPC=1156  
  movl %esi, %r12d                                                   #  8     0x9b279  3      OPC=1157  
  movl %r12d, %edi                                                   #  9     0x9b27c  3      OPC=1157  
  nop                                                                #  10    0x9b27f  1      OPC=1343  
  movl $0x1, %esi                                                    #  11    0x9b280  5      OPC=1154  
  nop                                                                #  12    0x9b285  1      OPC=1343  
  nop                                                                #  13    0x9b286  1      OPC=1343  
  nop                                                                #  14    0x9b287  1      OPC=1343  
  nop                                                                #  15    0x9b288  1      OPC=1343  
  nop                                                                #  16    0x9b289  1      OPC=1343  
  nop                                                                #  17    0x9b28a  1      OPC=1343  
  nop                                                                #  18    0x9b28b  1      OPC=1343  
  nop                                                                #  19    0x9b28c  1      OPC=1343  
  nop                                                                #  20    0x9b28d  1      OPC=1343  
  nop                                                                #  21    0x9b28e  1      OPC=1343  
  nop                                                                #  22    0x9b28f  1      OPC=1343  
  nop                                                                #  23    0x9b290  1      OPC=1343  
  nop                                                                #  24    0x9b291  1      OPC=1343  
  nop                                                                #  25    0x9b292  1      OPC=1343  
  nop                                                                #  26    0x9b293  1      OPC=1343  
  nop                                                                #  27    0x9b294  1      OPC=1343  
  nop                                                                #  28    0x9b295  1      OPC=1343  
  nop                                                                #  29    0x9b296  1      OPC=1343  
  nop                                                                #  30    0x9b297  1      OPC=1343  
  nop                                                                #  31    0x9b298  1      OPC=1343  
  nop                                                                #  32    0x9b299  1      OPC=1343  
  nop                                                                #  33    0x9b29a  1      OPC=1343  
  callq .fread                                                       #  34    0x9b29b  5      OPC=260   
  testl %eax, %eax                                                   #  35    0x9b2a0  2      OPC=2436  
  jle .L_9b2e0                                                       #  36    0x9b2a2  6      OPC=919   
  nop                                                                #  37    0x9b2a8  1      OPC=1343  
  nop                                                                #  38    0x9b2a9  1      OPC=1343  
  leal -0x1(%rax,%r12,1), %r12d                                      #  39    0x9b2aa  5      OPC=1066  
  movl %r12d, %r12d                                                  #  40    0x9b2af  3      OPC=1157  
  movzbl (%r15,%r12,1), %edx                                         #  41    0x9b2b2  5      OPC=1302  
  movl %ebx, %ebx                                                    #  42    0x9b2b7  2      OPC=1157  
  movl %edx, 0x24(%r15,%rbx,1)                                       #  43    0x9b2b9  5      OPC=1136  
  nop                                                                #  44    0x9b2be  1      OPC=1343  
  nop                                                                #  45    0x9b2bf  1      OPC=1343  
  nop                                                                #  46    0x9b2c0  1      OPC=1343  
  nop                                                                #  47    0x9b2c1  1      OPC=1343  
  nop                                                                #  48    0x9b2c2  1      OPC=1343  
  nop                                                                #  49    0x9b2c3  1      OPC=1343  
  nop                                                                #  50    0x9b2c4  1      OPC=1343  
  nop                                                                #  51    0x9b2c5  1      OPC=1343  
.L_9b2c0:                                                            #        0x9b2c6  0      OPC=0     
  movq 0x8(%rsp), %rbx                                               #  52    0x9b2c6  5      OPC=1161  
  movq 0x10(%rsp), %r12                                              #  53    0x9b2cb  5      OPC=1161  
  addl $0x18, %esp                                                   #  54    0x9b2d0  3      OPC=65    
  addq %r15, %rsp                                                    #  55    0x9b2d3  3      OPC=72    
  popq %r11                                                          #  56    0x9b2d6  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  57    0x9b2d8  7      OPC=131   
  nop                                                                #  58    0x9b2df  1      OPC=1343  
  nop                                                                #  59    0x9b2e0  1      OPC=1343  
  nop                                                                #  60    0x9b2e1  1      OPC=1343  
  nop                                                                #  61    0x9b2e2  1      OPC=1343  
  addq %r15, %r11                                                    #  62    0x9b2e3  3      OPC=72    
  jmpq %r11                                                          #  63    0x9b2e6  3      OPC=928   
  nop                                                                #  64    0x9b2e9  1      OPC=1343  
  nop                                                                #  65    0x9b2ea  1      OPC=1343  
  nop                                                                #  66    0x9b2eb  1      OPC=1343  
  nop                                                                #  67    0x9b2ec  1      OPC=1343  
.L_9b2e0:                                                            #        0x9b2ed  0      OPC=0     
  movl %ebx, %ebx                                                    #  68    0x9b2ed  2      OPC=1157  
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                #  69    0x9b2ef  9      OPC=1135  
  jmpq .L_9b2c0                                                      #  70    0x9b2f8  5      OPC=930   
  nop                                                                #  71    0x9b2fd  1      OPC=1343  
  nop                                                                #  72    0x9b2fe  1      OPC=1343  
  nop                                                                #  73    0x9b2ff  1      OPC=1343  
  nop                                                                #  74    0x9b300  1      OPC=1343  
  nop                                                                #  75    0x9b301  1      OPC=1343  
  nop                                                                #  76    0x9b302  1      OPC=1343  
  nop                                                                #  77    0x9b303  1      OPC=1343  
  nop                                                                #  78    0x9b304  1      OPC=1343  
  nop                                                                #  79    0x9b305  1      OPC=1343  
  nop                                                                #  80    0x9b306  1      OPC=1343  
  nop                                                                #  81    0x9b307  1      OPC=1343  
  nop                                                                #  82    0x9b308  1      OPC=1343  
  nop                                                                #  83    0x9b309  1      OPC=1343  
  nop                                                                #  84    0x9b30a  1      OPC=1343  
  nop                                                                #  85    0x9b30b  1      OPC=1343  
  nop                                                                #  86    0x9b30c  1      OPC=1343  
  nop                                                                #  87    0x9b30d  1      OPC=1343  
  nop                                                                #  88    0x9b30e  1      OPC=1343  
  nop                                                                #  89    0x9b30f  1      OPC=1343  
  nop                                                                #  90    0x9b310  1      OPC=1343  
  nop                                                                #  91    0x9b311  1      OPC=1343  
                                                                                                        
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci

