.class Lcom/heyzap/http/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/http/SimpleMultipartEntity$FilePart;
    }
.end annotation


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final CR_LF:[B

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleMultipartEntity"

.field private static final MULTIPART_CHARS:[C

.field private static final TRANSFER_ENCODING_BINARY:[B


# instance fields
.field private boundary:Ljava/lang/String;

.field private boundaryEnd:[B

.field private boundaryLine:[B

.field private bytesWritten:I

.field private fileParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/http/SimpleMultipartEntity$FilePart;",
            ">;"
        }
    .end annotation
.end field

.field private isRepeatable:Z

.field private out:Ljava/io/ByteArrayOutputStream;

.field private progressHandler:Lcom/heyzap/http/ResponseHandlerInterface;

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/SimpleMultipartEntity;->CR_LF:[B

    .line 51
    const-string v0, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    .line 54
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/heyzap/http/ResponseHandlerInterface;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-string v5, "--"

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v2, p0, Lcom/heyzap/http/SimpleMultipartEntity;->isRepeatable:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 76
    :goto_0
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 77
    sget-object v3, Lcom/heyzap/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v4, Lcom/heyzap/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryLine:[B

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryEnd:[B

    .line 84
    iput-object p1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->progressHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/http/SimpleMultipartEntity;)[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryLine:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/heyzap/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/http/SimpleMultipartEntity;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/heyzap/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/heyzap/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/heyzap/http/SimpleMultipartEntity;->CR_LF:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/http/SimpleMultipartEntity;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/heyzap/http/SimpleMultipartEntity;->updateProgress(I)V

    return-void
.end method

.method private createContentDisposition(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private createContentType(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private updateProgress(I)V
    .locals 3

    .prologue
    .line 162
    iget v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->bytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->bytesWritten:I

    .line 163
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->progressHandler:Lcom/heyzap/http/ResponseHandlerInterface;

    iget v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->bytesWritten:I

    iget v2, p0, Lcom/heyzap/http/SimpleMultipartEntity;->totalSize:I

    invoke-interface {v0, v1, v2}, Lcom/heyzap/http/ResponseHandlerInterface;->sendProgressMessage(II)V

    .line 164
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/heyzap/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    if-nez p3, :cond_0

    .line 111
    const-string v0, "application/octet-stream"

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v2, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;-><init>(Lcom/heyzap/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "text/plain; charset=UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/heyzap/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p4, :cond_1

    .line 119
    const-string v0, "application/octet-stream"

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lcom/heyzap/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Lcom/heyzap/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/heyzap/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/heyzap/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 132
    :goto_1
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/heyzap/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 139
    :try_start_0
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_2
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "SimpleMultipartEntity"

    const-string v2, "Cannot close input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    move-object v0, p4

    goto :goto_0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 90
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lcom/heyzap/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 91
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lcom/heyzap/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/heyzap/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/heyzap/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "SimpleMultipartEntity"

    const-string v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/heyzap/http/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContent() is not supported. Use writeTo() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 7

    .prologue
    .line 224
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    .line 225
    iget-object v2, p0, Lcom/heyzap/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;

    .line 226
    invoke-virtual {v0}, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->getTotalLength()J

    move-result-wide v0

    .line 227
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 228
    const-wide/16 v0, -0x1

    .line 233
    :goto_1
    return-wide v0

    .line 230
    :cond_0
    add-long/2addr v0, v3

    move-wide v3, v0

    .line 231
    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v3

    .line 233
    goto :goto_1
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 238
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->isRepeatable:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public setIsRepeatable(Z)V
    .locals 0

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/heyzap/http/SimpleMultipartEntity;->isRepeatable:Z

    .line 248
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->bytesWritten:I

    .line 263
    invoke-virtual {p0}, Lcom/heyzap/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->totalSize:I

    .line 264
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 265
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/heyzap/http/SimpleMultipartEntity;->updateProgress(I)V

    .line 267
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;

    .line 268
    invoke-virtual {v0, p1}, Lcom/heyzap/http/SimpleMultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryEnd:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    iget-object v0, p0, Lcom/heyzap/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/heyzap/http/SimpleMultipartEntity;->updateProgress(I)V

    .line 272
    return-void
.end method
