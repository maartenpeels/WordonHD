.class public Lcom/heyzap/internal/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/Base64$Encoder;,
        Lcom/heyzap/internal/Base64$Decoder;,
        Lcom/heyzap/internal/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/heyzap/internal/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/heyzap/internal/Base64;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/heyzap/internal/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/heyzap/internal/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/heyzap/internal/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/heyzap/internal/Base64$Decoder;-><init>(I[B)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/heyzap/internal/Base64$Decoder;->process([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget v1, v0, Lcom/heyzap/internal/Base64$Decoder;->op:I

    iget-object v2, v0, Lcom/heyzap/internal/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 166
    iget-object v0, v0, Lcom/heyzap/internal/Base64$Decoder;->output:[B

    .line 173
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget v1, v0, Lcom/heyzap/internal/Base64$Decoder;->op:I

    new-array v1, v1, [B

    .line 172
    iget-object v2, v0, Lcom/heyzap/internal/Base64$Decoder;->output:[B

    iget v0, v0, Lcom/heyzap/internal/Base64$Decoder;->op:I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2

    .prologue
    .line 494
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/heyzap/internal/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 510
    new-instance v0, Lcom/heyzap/internal/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/heyzap/internal/Base64$Encoder;-><init>(I[B)V

    .line 513
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 516
    iget-boolean v2, v0, Lcom/heyzap/internal/Base64$Encoder;->do_padding:Z

    if-eqz v2, :cond_2

    .line 517
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 518
    add-int/lit8 v1, v1, 0x4

    .line 529
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Lcom/heyzap/internal/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 530
    sub-int v2, p2, v4

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, v0, Lcom/heyzap/internal/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    :goto_1
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 534
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/heyzap/internal/Base64$Encoder;->output:[B

    .line 535
    invoke-virtual {v0, p0, p1, p2, v4}, Lcom/heyzap/internal/Base64$Encoder;->process([BIIZ)Z

    .line 537
    sget-boolean v2, Lcom/heyzap/internal/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget v2, v0, Lcom/heyzap/internal/Base64$Encoder;->op:I

    if-eq v2, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 523
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 524
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 530
    goto :goto_1

    .line 539
    :cond_4
    iget-object v0, v0, Lcom/heyzap/internal/Base64$Encoder;->output:[B

    return-object v0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/heyzap/internal/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 457
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 477
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/heyzap/internal/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 478
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
