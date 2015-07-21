  .text
  .globl get_cpu_count
  .type get_cpu_count, @function

#! file-offset 0x63620
#! rip-offset  0x23620
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.get_cpu_count:            #        0x23620  0      OPC=0     
  movl $0x1, %eax          #  1     0x23620  5      OPC=1154  
  popq %r11                #  2     0x23625  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  3     0x23627  7      OPC=131   
  nop                      #  4     0x2362e  1      OPC=1343  
  nop                      #  5     0x2362f  1      OPC=1343  
  nop                      #  6     0x23630  1      OPC=1343  
  nop                      #  7     0x23631  1      OPC=1343  
  addq %r15, %r11          #  8     0x23632  3      OPC=72    
  jmpq %r11                #  9     0x23635  3      OPC=928   
  nop                      #  10    0x23638  1      OPC=1343  
  nop                      #  11    0x23639  1      OPC=1343  
  nop                      #  12    0x2363a  1      OPC=1343  
  nop                      #  13    0x2363b  1      OPC=1343  
  nop                      #  14    0x2363c  1      OPC=1343  
  nop                      #  15    0x2363d  1      OPC=1343  
  nop                      #  16    0x2363e  1      OPC=1343  
  nop                      #  17    0x2363f  1      OPC=1343  
  nop                      #  18    0x23640  1      OPC=1343  
  nop                      #  19    0x23641  1      OPC=1343  
  nop                      #  20    0x23642  1      OPC=1343  
  nop                      #  21    0x23643  1      OPC=1343  
  nop                      #  22    0x23644  1      OPC=1343  
  nop                      #  23    0x23645  1      OPC=1343  
  nop                      #  24    0x23646  1      OPC=1343  
                                                              
.size get_cpu_count, .-get_cpu_count

