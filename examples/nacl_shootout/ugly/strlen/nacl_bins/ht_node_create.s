  .text
  .globl ht_node_create
  .type ht_node_create, @function

#! file-offset 0x63820
#! rip-offset  0x23820
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.ht_node_create:            #        0x23820  0      OPC=0     
  pushq %rbx                #  1     0x23820  1      OPC=1861  
  movq %rdi, %rbx           #  2     0x23821  3      OPC=1162  
  movl $0x10, %esi          #  3     0x23824  5      OPC=1154  
  movl $0x1, %edi           #  4     0x23829  5      OPC=1154  
  nop                       #  5     0x2382e  1      OPC=1343  
  nop                       #  6     0x2382f  1      OPC=1343  
  nop                       #  7     0x23830  1      OPC=1343  
  nop                       #  8     0x23831  1      OPC=1343  
  nop                       #  9     0x23832  1      OPC=1343  
  nop                       #  10    0x23833  1      OPC=1343  
  nop                       #  11    0x23834  1      OPC=1343  
  nop                       #  12    0x23835  1      OPC=1343  
  nop                       #  13    0x23836  1      OPC=1343  
  nop                       #  14    0x23837  1      OPC=1343  
  nop                       #  15    0x23838  1      OPC=1343  
  nop                       #  16    0x23839  1      OPC=1343  
  nop                       #  17    0x2383a  1      OPC=1343  
  callq .calloc             #  18    0x2383b  5      OPC=260   
  movl %eax, %eax           #  19    0x23840  2      OPC=1157  
  testq %rax, %rax          #  20    0x23842  3      OPC=2438  
  je .L_23860               #  21    0x23845  6      OPC=893   
  nop                       #  22    0x2384b  1      OPC=1343  
  nop                       #  23    0x2384c  1      OPC=1343  
  movl %eax, %eax           #  24    0x2384d  2      OPC=1157  
  movq %rbx, (%r15,%rax,1)  #  25    0x2384f  4      OPC=1138  
  popq %rbx                 #  26    0x23853  1      OPC=1694  
  popq %r11                 #  27    0x23854  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  28    0x23856  7      OPC=131   
  nop                       #  29    0x2385d  1      OPC=1343  
  nop                       #  30    0x2385e  1      OPC=1343  
  nop                       #  31    0x2385f  1      OPC=1343  
  nop                       #  32    0x23860  1      OPC=1343  
  addq %r15, %r11           #  33    0x23861  3      OPC=72    
  jmpq %r11                 #  34    0x23864  3      OPC=928   
  nop                       #  35    0x23867  1      OPC=1343  
  nop                       #  36    0x23868  1      OPC=1343  
  nop                       #  37    0x23869  1      OPC=1343  
  nop                       #  38    0x2386a  1      OPC=1343  
  nop                       #  39    0x2386b  1      OPC=1343  
  nop                       #  40    0x2386c  1      OPC=1343  
.L_23860:                   #        0x2386d  0      OPC=0     
  movl $0x1002048a, %edi    #  41    0x2386d  5      OPC=1154  
  nop                       #  42    0x23872  1      OPC=1343  
  nop                       #  43    0x23873  1      OPC=1343  
  nop                       #  44    0x23874  1      OPC=1343  
  nop                       #  45    0x23875  1      OPC=1343  
  nop                       #  46    0x23876  1      OPC=1343  
  nop                       #  47    0x23877  1      OPC=1343  
  nop                       #  48    0x23878  1      OPC=1343  
  nop                       #  49    0x23879  1      OPC=1343  
  nop                       #  50    0x2387a  1      OPC=1343  
  nop                       #  51    0x2387b  1      OPC=1343  
  nop                       #  52    0x2387c  1      OPC=1343  
  nop                       #  53    0x2387d  1      OPC=1343  
  nop                       #  54    0x2387e  1      OPC=1343  
  nop                       #  55    0x2387f  1      OPC=1343  
  nop                       #  56    0x23880  1      OPC=1343  
  nop                       #  57    0x23881  1      OPC=1343  
  nop                       #  58    0x23882  1      OPC=1343  
  nop                       #  59    0x23883  1      OPC=1343  
  nop                       #  60    0x23884  1      OPC=1343  
  nop                       #  61    0x23885  1      OPC=1343  
  nop                       #  62    0x23886  1      OPC=1343  
  nop                       #  63    0x23887  1      OPC=1343  
  callq .perror             #  64    0x23888  5      OPC=260   
  movl $0x1003a062, %ecx    #  65    0x2388d  5      OPC=1154  
  movl $0x1002054c, %edx    #  66    0x23892  5      OPC=1154  
  movl $0x56, %esi          #  67    0x23897  5      OPC=1154  
  movl $0x10020499, %edi    #  68    0x2389c  5      OPC=1154  
  nop                       #  69    0x238a1  1      OPC=1343  
  nop                       #  70    0x238a2  1      OPC=1343  
  nop                       #  71    0x238a3  1      OPC=1343  
  nop                       #  72    0x238a4  1      OPC=1343  
  nop                       #  73    0x238a5  1      OPC=1343  
  nop                       #  74    0x238a6  1      OPC=1343  
  nop                       #  75    0x238a7  1      OPC=1343  
  callq .__assert_func      #  76    0x238a8  5      OPC=260   
                                                               
.size ht_node_create, .-ht_node_create

