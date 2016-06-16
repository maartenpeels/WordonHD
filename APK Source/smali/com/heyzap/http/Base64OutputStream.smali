.class public Lcom/heyzap/http/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Lcom/heyzap/http/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/heyzap/http/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/heyzap/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    iput-object v1, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    .line 38
    iput p2, p0, Lcom/heyzap/http/Base64OutputStream;->flags:I

    .line 39
    if-eqz p3, :cond_0

    .line 40
    new-instance v0, Lcom/heyzap/http/Base64$Encoder;

    invoke-direct {v0, p2, v1}, Lcom/heyzap/http/Base64$Encoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/heyzap/http/Base64$Decoder;

    invoke-direct {v0, p2, v1}, Lcom/heyzap/http/Base64$Decoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    goto :goto_0
.end method

.method private embiggen([BI)[B
    .locals 1

    .prologue
    .line 124
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 125
    :cond_0
    new-array v0, p2, [B

    .line 127
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    iget v0, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/heyzap/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 70
    iput v2, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    .line 72
    :cond_0
    return-void
.end method

.method private internalWrite([BIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    iget-object v1, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    iget-object v1, v1, Lcom/heyzap/http/Base64$Coder;->output:[B

    iget-object v2, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    invoke-virtual {v2, p3}, Lcom/heyzap/http/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/heyzap/http/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/http/Base64$Coder;->output:[B

    .line 114
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/heyzap/http/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/heyzap/http/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Lcom/heyzap/http/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    iget-object v1, v1, Lcom/heyzap/http/Base64$Coder;->output:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/http/Base64OutputStream;->coder:Lcom/heyzap/http/Base64$Coder;

    iget v3, v3, Lcom/heyzap/http/Base64$Coder;->op:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/heyzap/http/Base64OutputStream;->flushBuffer()V

    .line 84
    sget-object v1, Lcom/heyzap/http/Base64OutputStream;->EMPTY:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/heyzap/http/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/heyzap/http/Base64OutputStream;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/heyzap/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 102
    throw v0

    .line 93
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/heyzap/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 97
    goto :goto_1

    .line 104
    :cond_2
    return-void

    .line 85
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_0

    .line 53
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    .line 55
    :cond_0
    iget v0, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    iget-object v1, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/heyzap/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 58
    iput v2, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/heyzap/http/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 61
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-gtz p3, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/heyzap/http/Base64OutputStream;->flushBuffer()V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/heyzap/http/Base64OutputStream;->internalWrite([BIIZ)V

    goto :goto_0
.end method
