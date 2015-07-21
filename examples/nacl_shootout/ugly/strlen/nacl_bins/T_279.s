  .text
  .globl T_279
  .type T_279, @function

#! file-offset 0xb30a0
#! rip-offset  0x730a0
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.T_279:                          #        0x730a0  0      OPC=0     
  movl %edi, %edi                #  1     0x730a0  2      OPC=1157  
  subl $0x8, %esp                #  2     0x730a2  3      OPC=2384  
  addq %r15, %rsp                #  3     0x730a5  3      OPC=72    
  movl %edi, %edi                #  4     0x730a8  2      OPC=1157  
  orl $0x1, 0x14(%r15,%rdi,1)    #  5     0x730aa  6      OPC=1364  
  movl %edi, %edi                #  6     0x730b0  2      OPC=1157  
  testb $0x1, 0x10(%r15,%rdi,1)  #  7     0x730b2  6      OPC=2430  
  jne .L_730e0                   #  8     0x730b8  6      OPC=963   
  nop                            #  9     0x730be  1      OPC=1343  
  nop                            #  10    0x730bf  1      OPC=1343  
  addl $0x8, %esp                #  11    0x730c0  3      OPC=65    
  addq %r15, %rsp                #  12    0x730c3  3      OPC=72    
  popq %r11                      #  13    0x730c6  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  14    0x730c8  7      OPC=131   
  nop                            #  15    0x730cf  1      OPC=1343  
  nop                            #  16    0x730d0  1      OPC=1343  
  nop                            #  17    0x730d1  1      OPC=1343  
  nop                            #  18    0x730d2  1      OPC=1343  
  addq %r15, %r11                #  19    0x730d3  3      OPC=72    
  jmpq %r11                      #  20    0x730d6  3      OPC=928   
  nop                            #  21    0x730d9  1      OPC=1343  
  nop                            #  22    0x730da  1      OPC=1343  
  nop                            #  23    0x730db  1      OPC=1343  
  nop                            #  24    0x730dc  1      OPC=1343  
  nop                            #  25    0x730dd  1      OPC=1343  
  nop                            #  26    0x730de  1      OPC=1343  
  nop                            #  27    0x730df  1      OPC=1343  
  nop                            #  28    0x730e0  1      OPC=1343  
  nop                            #  29    0x730e1  1      OPC=1343  
  nop                            #  30    0x730e2  1      OPC=1343  
  nop                            #  31    0x730e3  1      OPC=1343  
  nop                            #  32    0x730e4  1      OPC=1343  
  nop                            #  33    0x730e5  1      OPC=1343  
  nop                            #  34    0x730e6  1      OPC=1343  
  nop                            #  35    0x730e7  1      OPC=1343  
  nop                            #  36    0x730e8  1      OPC=1343  
  nop                            #  37    0x730e9  1      OPC=1343  
  nop                            #  38    0x730ea  1      OPC=1343  
  nop                            #  39    0x730eb  1      OPC=1343  
  nop                            #  40    0x730ec  1      OPC=1343  
.L_730e0:                        #        0x730ed  0      OPC=0     
  nop                            #  41    0x730ed  1      OPC=1343  
  nop                            #  42    0x730ee  1      OPC=1343  
  nop                            #  43    0x730ef  1      OPC=1343  
  nop                            #  44    0x730f0  1      OPC=1343  
  nop                            #  45    0x730f1  1      OPC=1343  
  nop                            #  46    0x730f2  1      OPC=1343  
  nop                            #  47    0x730f3  1      OPC=1343  
  nop                            #  48    0x730f4  1      OPC=1343  
  nop                            #  49    0x730f5  1      OPC=1343  
  nop                            #  50    0x730f6  1      OPC=1343  
  nop                            #  51    0x730f7  1      OPC=1343  
  nop                            #  52    0x730f8  1      OPC=1343  
  nop                            #  53    0x730f9  1      OPC=1343  
  nop                            #  54    0x730fa  1      OPC=1343  
  nop                            #  55    0x730fb  1      OPC=1343  
  nop                            #  56    0x730fc  1      OPC=1343  
  nop                            #  57    0x730fd  1      OPC=1343  
  nop                            #  58    0x730fe  1      OPC=1343  
  nop                            #  59    0x730ff  1      OPC=1343  
  nop                            #  60    0x73100  1      OPC=1343  
  nop                            #  61    0x73101  1      OPC=1343  
  nop                            #  62    0x73102  1      OPC=1343  
  nop                            #  63    0x73103  1      OPC=1343  
  nop                            #  64    0x73104  1      OPC=1343  
  nop                            #  65    0x73105  1      OPC=1343  
  nop                            #  66    0x73106  1      OPC=1343  
  nop                            #  67    0x73107  1      OPC=1343  
  callq .__cxa_rethrow           #  68    0x73108  5      OPC=260   
                                                                    
.size T_279, .-T_279

