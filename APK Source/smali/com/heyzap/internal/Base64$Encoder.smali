.class Lcom/heyzap/internal/Base64$Encoder;
.super Lcom/heyzap/internal/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 542
    const-class v0, Lcom/heyzap/internal/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/heyzap/internal/Base64$Encoder;->$assertionsDisabled:Z

    .line 554
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/heyzap/internal/Base64$Encoder;->ENCODE:[B

    .line 565
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/heyzap/internal/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 554
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 565
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 581
    invoke-direct {p0}, Lcom/heyzap/internal/Base64$Coder;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/heyzap/internal/Base64$Encoder;->output:[B

    .line 584
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_padding:Z

    .line 585
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_newline:Z

    .line 586
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    .line 587
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/heyzap/internal/Base64$Encoder;->ENCODE:[B

    :goto_3
    iput-object v0, p0, Lcom/heyzap/internal/Base64$Encoder;->alphabet:[B

    .line 589
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    .line 590
    iput v1, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    .line 592
    iget-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/heyzap/internal/Base64$Encoder;->count:I

    .line 593
    return-void

    :cond_0
    move v0, v1

    .line 584
    goto :goto_0

    :cond_1
    move v0, v1

    .line 585
    goto :goto_1

    :cond_2
    move v0, v1

    .line 586
    goto :goto_2

    .line 587
    :cond_3
    sget-object v0, Lcom/heyzap/internal/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_3

    .line 592
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1

    .prologue
    .line 600
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 11

    .prologue
    .line 605
    iget-object v0, p0, Lcom/heyzap/internal/Base64$Encoder;->alphabet:[B

    .line 606
    iget-object v1, p0, Lcom/heyzap/internal/Base64$Encoder;->output:[B

    .line 607
    const/4 v2, 0x0

    .line 608
    iget v3, p0, Lcom/heyzap/internal/Base64$Encoder;->count:I

    .line 611
    add-int v4, p3, p2

    .line 612
    const/4 v5, -0x1

    .line 618
    iget v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    move v6, p2

    .line 645
    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_17

    .line 646
    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v2

    .line 647
    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 648
    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v2

    .line 649
    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v0, v5

    aput-byte v5, v1, v7

    .line 650
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_17

    .line 651
    iget-boolean v3, p0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v2

    move v2, v3

    .line 652
    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v2

    .line 653
    const/16 v2, 0x13

    move v5, v3

    move v3, v2

    move v2, v6

    .line 662
    :cond_2
    :goto_1
    add-int/lit8 v6, v2, 0x3

    if-gt v6, v4, :cond_3

    .line 663
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 666
    shr-int/lit8 v7, v6, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v5

    .line 667
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 668
    add-int/lit8 v7, v5, 0x2

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 669
    add-int/lit8 v7, v5, 0x3

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v0, v6

    aput-byte v6, v1, v7

    .line 670
    add-int/lit8 v2, v2, 0x3

    .line 671
    add-int/lit8 v5, v5, 0x4

    .line 672
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 673
    iget-boolean v3, p0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_16

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v5

    .line 674
    :goto_2
    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v3

    .line 675
    const/16 v3, 0x13

    goto :goto_1

    :pswitch_0
    move v6, p2

    .line 621
    goto/16 :goto_0

    .line 624
    :pswitch_1
    add-int/lit8 v6, p2, 0x2

    if-gt v6, v4, :cond_0

    .line 627
    iget-object v5, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, p2, 0x1

    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 630
    const/4 v6, 0x0

    iput v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    move v6, v7

    goto/16 :goto_0

    .line 635
    :pswitch_2
    add-int/lit8 v6, p2, 0x1

    if-gt v6, v4, :cond_0

    .line 637
    iget-object v5, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    iget-object v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x1

    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 640
    const/4 v7, 0x0

    iput v7, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    goto/16 :goto_0

    .line 679
    :cond_3
    if-eqz p4, :cond_f

    .line 685
    iget v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    sub-int v6, v2, v6

    const/4 v7, 0x1

    sub-int v7, v4, v7

    if-ne v6, v7, :cond_7

    .line 686
    const/4 v6, 0x0

    .line 687
    iget v7, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v7, v6

    move v7, v2

    move v2, v6

    move v6, v8

    :goto_3
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    .line 688
    iget v8, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    sub-int v6, v8, v6

    iput v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    .line 689
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v5

    .line 690
    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    aput-byte v0, v1, v6

    .line 691
    iget-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_padding:Z

    if-eqz v0, :cond_15

    .line 692
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v1, v5

    .line 693
    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x3d

    aput-byte v5, v1, v0

    move v0, v2

    .line 695
    :goto_4
    iget-boolean v2, p0, Lcom/heyzap/internal/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_5

    .line 696
    iget-boolean v2, p0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    if-eqz v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v0

    move v0, v2

    .line 697
    :cond_4
    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v0

    move v0, v2

    :cond_5
    move v1, v0

    move v0, v7

    .line 719
    :goto_5
    sget-boolean v2, Lcom/heyzap/internal/Base64$Encoder;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 687
    :cond_6
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    goto :goto_3

    .line 699
    :cond_7
    iget v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    sub-int v6, v2, v6

    const/4 v7, 0x2

    sub-int v7, v4, v7

    if-ne v6, v7, :cond_c

    .line 700
    const/4 v6, 0x0

    .line 701
    iget v7, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    iget-object v7, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v7, v6

    move v7, v2

    move v2, v6

    move v6, v8

    :goto_6
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    iget v8, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    if-lez v8, :cond_b

    iget-object v8, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    move v8, v7

    move v7, v9

    :goto_7
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v2, v6

    .line 703
    iget v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    .line 704
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v5

    .line 705
    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v6

    .line 706
    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    aput-byte v0, v1, v5

    .line 707
    iget-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_padding:Z

    if-eqz v0, :cond_14

    .line 708
    add-int/lit8 v0, v6, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v1, v6

    .line 710
    :goto_8
    iget-boolean v2, p0, Lcom/heyzap/internal/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_9

    .line 711
    iget-boolean v2, p0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    if-eqz v2, :cond_8

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v0

    move v0, v2

    .line 712
    :cond_8
    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v0

    move v0, v2

    :cond_9
    move v1, v0

    move v0, v8

    .line 714
    goto/16 :goto_5

    .line 701
    :cond_a
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_7

    .line 714
    :cond_c
    iget-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_d

    if-lez v5, :cond_d

    const/16 v0, 0x13

    if-eq v3, v0, :cond_d

    .line 715
    iget-boolean v0, p0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_13

    add-int/lit8 v0, v5, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v5

    .line 716
    :goto_9
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v0

    :cond_d
    move v0, v2

    move v1, v5

    goto/16 :goto_5

    .line 720
    :cond_e
    sget-boolean v2, Lcom/heyzap/internal/Base64$Encoder;->$assertionsDisabled:Z

    if-nez v2, :cond_12

    if-eq v0, v4, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 725
    :cond_f
    const/4 v0, 0x1

    sub-int v0, v4, v0

    if-ne v2, v0, :cond_10

    .line 726
    iget-object v0, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v0, v5

    .line 733
    :goto_a
    iput v0, p0, Lcom/heyzap/internal/Base64$Encoder;->op:I

    .line 734
    iput v3, p0, Lcom/heyzap/internal/Base64$Encoder;->count:I

    .line 736
    const/4 v0, 0x1

    return v0

    .line 727
    :cond_10
    const/4 v0, 0x2

    sub-int v0, v4, v0

    if-ne v2, v0, :cond_11

    .line 728
    iget-object v0, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    aget-byte v4, p1, v2

    aput-byte v4, v0, v1

    .line 729
    iget-object v0, p0, Lcom/heyzap/internal/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/heyzap/internal/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    :cond_11
    move v0, v5

    goto :goto_a

    :cond_12
    move v0, v1

    goto :goto_a

    :cond_13
    move v0, v5

    goto :goto_9

    :cond_14
    move v0, v6

    goto/16 :goto_8

    :cond_15
    move v0, v5

    goto/16 :goto_4

    :cond_16
    move v3, v5

    goto/16 :goto_2

    :cond_17
    move v5, v2

    move v2, v6

    goto/16 :goto_1

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
