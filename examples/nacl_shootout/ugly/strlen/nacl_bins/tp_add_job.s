  .text
  .globl tp_add_job
  .type tp_add_job, @function

#! file-offset 0x63420
#! rip-offset  0x23420
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.tp_add_job:                   #        0x23420  0      OPC=0     
  movl %edi, %edi              #  1     0x23420  2      OPC=1157  
  movl %esi, %esi              #  2     0x23422  2      OPC=1157  
  movl %edx, %edx              #  3     0x23424  2      OPC=1157  
  movl %edi, %edi              #  4     0x23426  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax  #  5     0x23428  5      OPC=1156  
  movl %edi, %edi              #  6     0x2342d  2      OPC=1157  
  cmpl 0x4(%r15,%rdi,1), %eax  #  7     0x2342f  5      OPC=471   
  jge .L_23460                 #  8     0x23434  6      OPC=907   
  nop                          #  9     0x2343a  1      OPC=1343  
  nop                          #  10    0x2343b  1      OPC=1343  
  shll $0x3, %eax              #  11    0x2343c  3      OPC=2269  
  movl %edi, %edi              #  12    0x2343f  2      OPC=1157  
  addl (%r15,%rdi,1), %eax     #  13    0x23441  4      OPC=66    
  nop                          #  14    0x23445  1      OPC=1343  
  movl %eax, %eax              #  15    0x23446  2      OPC=1157  
  movl %esi, (%r15,%rax,1)     #  16    0x23448  4      OPC=1136  
  movl %eax, %eax              #  17    0x2344c  2      OPC=1157  
  movl %edx, 0x4(%r15,%rax,1)  #  18    0x2344e  5      OPC=1136  
  movl %edi, %edi              #  19    0x23453  2      OPC=1157  
  addl $0x1, 0x8(%r15,%rdi,1)  #  20    0x23455  6      OPC=51    
  nop                          #  21    0x2345b  1      OPC=1343  
  nop                          #  22    0x2345c  1      OPC=1343  
  nop                          #  23    0x2345d  1      OPC=1343  
  nop                          #  24    0x2345e  1      OPC=1343  
  nop                          #  25    0x2345f  1      OPC=1343  
  nop                          #  26    0x23460  1      OPC=1343  
  nop                          #  27    0x23461  1      OPC=1343  
  nop                          #  28    0x23462  1      OPC=1343  
  nop                          #  29    0x23463  1      OPC=1343  
  nop                          #  30    0x23464  1      OPC=1343  
  nop                          #  31    0x23465  1      OPC=1343  
.L_23460:                      #        0x23466  0      OPC=0     
  popq %r11                    #  32    0x23466  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  33    0x23468  7      OPC=131   
  nop                          #  34    0x2346f  1      OPC=1343  
  nop                          #  35    0x23470  1      OPC=1343  
  nop                          #  36    0x23471  1      OPC=1343  
  nop                          #  37    0x23472  1      OPC=1343  
  addq %r15, %r11              #  38    0x23473  3      OPC=72    
  jmpq %r11                    #  39    0x23476  3      OPC=928   
  nop                          #  40    0x23479  1      OPC=1343  
  nop                          #  41    0x2347a  1      OPC=1343  
  nop                          #  42    0x2347b  1      OPC=1343  
  nop                          #  43    0x2347c  1      OPC=1343  
  nop                          #  44    0x2347d  1      OPC=1343  
  nop                          #  45    0x2347e  1      OPC=1343  
  nop                          #  46    0x2347f  1      OPC=1343  
  nop                          #  47    0x23480  1      OPC=1343  
  nop                          #  48    0x23481  1      OPC=1343  
  nop                          #  49    0x23482  1      OPC=1343  
  nop                          #  50    0x23483  1      OPC=1343  
  nop                          #  51    0x23484  1      OPC=1343  
  nop                          #  52    0x23485  1      OPC=1343  
  nop                          #  53    0x23486  1      OPC=1343  
  nop                          #  54    0x23487  1      OPC=1343  
  nop                          #  55    0x23488  1      OPC=1343  
  nop                          #  56    0x23489  1      OPC=1343  
  nop                          #  57    0x2348a  1      OPC=1343  
  nop                          #  58    0x2348b  1      OPC=1343  
  nop                          #  59    0x2348c  1      OPC=1343  
                                                                  
.size tp_add_job, .-tp_add_job

