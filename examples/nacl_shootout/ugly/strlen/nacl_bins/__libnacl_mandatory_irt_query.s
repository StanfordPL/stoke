  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x157ee0
#! rip-offset  0x117ee0
#! capacity    96 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.__libnacl_mandatory_irt_query:  #        0x117ee0  0      OPC=0     
  subl $0x8, %esp                #  1     0x117ee0  3      OPC=2384  
  addq %r15, %rsp                #  2     0x117ee3  3      OPC=72    
  movl %edi, %edi                #  3     0x117ee6  2      OPC=1157  
  movl %esi, %esi                #  4     0x117ee8  2      OPC=1157  
  xchgw %ax, %ax                 #  5     0x117eea  2      OPC=3700  
  nop                            #  6     0x117eec  1      OPC=1343  
  nop                            #  7     0x117eed  1      OPC=1343  
  nop                            #  8     0x117eee  1      OPC=1343  
  nop                            #  9     0x117eef  1      OPC=1343  
  nop                            #  10    0x117ef0  1      OPC=1343  
  nop                            #  11    0x117ef1  1      OPC=1343  
  nop                            #  12    0x117ef2  1      OPC=1343  
  nop                            #  13    0x117ef3  1      OPC=1343  
  nop                            #  14    0x117ef4  1      OPC=1343  
  nop                            #  15    0x117ef5  1      OPC=1343  
  nop                            #  16    0x117ef6  1      OPC=1343  
  nop                            #  17    0x117ef7  1      OPC=1343  
  nop                            #  18    0x117ef8  1      OPC=1343  
  nop                            #  19    0x117ef9  1      OPC=1343  
  nop                            #  20    0x117efa  1      OPC=1343  
  callq .__libnacl_irt_query     #  21    0x117efb  5      OPC=260   
  testl %eax, %eax               #  22    0x117f00  2      OPC=2436  
  je .L_117f20                   #  23    0x117f02  6      OPC=893   
  nop                            #  24    0x117f08  1      OPC=1343  
  nop                            #  25    0x117f09  1      OPC=1343  
  addl $0x8, %esp                #  26    0x117f0a  3      OPC=65    
  addq %r15, %rsp                #  27    0x117f0d  3      OPC=72    
  popq %r11                      #  28    0x117f10  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  29    0x117f12  7      OPC=131   
  nop                            #  30    0x117f19  1      OPC=1343  
  nop                            #  31    0x117f1a  1      OPC=1343  
  nop                            #  32    0x117f1b  1      OPC=1343  
  nop                            #  33    0x117f1c  1      OPC=1343  
  addq %r15, %r11                #  34    0x117f1d  3      OPC=72    
  jmpq %r11                      #  35    0x117f20  3      OPC=928   
  nop                            #  36    0x117f23  1      OPC=1343  
  nop                            #  37    0x117f24  1      OPC=1343  
  nop                            #  38    0x117f25  1      OPC=1343  
  nop                            #  39    0x117f26  1      OPC=1343  
  nop                            #  40    0x117f27  1      OPC=1343  
  nop                            #  41    0x117f28  1      OPC=1343  
  nop                            #  42    0x117f29  1      OPC=1343  
  nop                            #  43    0x117f2a  1      OPC=1343  
  nop                            #  44    0x117f2b  1      OPC=1343  
  nop                            #  45    0x117f2c  1      OPC=1343  
.L_117f20:                       #        0x117f2d  0      OPC=0     
  movl $0x10040a40, %edi         #  46    0x117f2d  5      OPC=1154  
  addl $0x8, %esp                #  47    0x117f32  3      OPC=65    
  addq %r15, %rsp                #  48    0x117f35  3      OPC=72    
  jmpq .__libnacl_fatal          #  49    0x117f38  5      OPC=930   
  nop                            #  50    0x117f3d  1      OPC=1343  
  nop                            #  51    0x117f3e  1      OPC=1343  
  nop                            #  52    0x117f3f  1      OPC=1343  
  nop                            #  53    0x117f40  1      OPC=1343  
  nop                            #  54    0x117f41  1      OPC=1343  
  nop                            #  55    0x117f42  1      OPC=1343  
  nop                            #  56    0x117f43  1      OPC=1343  
  nop                            #  57    0x117f44  1      OPC=1343  
  nop                            #  58    0x117f45  1      OPC=1343  
  nop                            #  59    0x117f46  1      OPC=1343  
  nop                            #  60    0x117f47  1      OPC=1343  
  nop                            #  61    0x117f48  1      OPC=1343  
  nop                            #  62    0x117f49  1      OPC=1343  
  nop                            #  63    0x117f4a  1      OPC=1343  
  nop                            #  64    0x117f4b  1      OPC=1343  
  nop                            #  65    0x117f4c  1      OPC=1343  
                                                                     
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query

