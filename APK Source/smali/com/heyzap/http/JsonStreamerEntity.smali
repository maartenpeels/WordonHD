.class Lcom/heyzap/http/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "JsonStreamerEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final BUFFER_SIZE:I = 0x800

.field private static final BUILDER:Ljava/lang/StringBuilder;

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

.field private static final HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

.field private static final HEADER_JSON_CONTENT:Lorg/apache/http/Header;

.field private static final JSON_FALSE:[B

.field private static final JSON_NULL:[B

.field private static final JSON_TRUE:[B

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_ELAPSED:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final contentEncoding:Lorg/apache/http/Header;

.field private final kvParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final streamParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/http/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xacc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_TRUE:[B

    .line 60
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_FALSE:[B

    .line 61
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 62
    const-string v0, "name"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_NAME:[B

    .line 63
    const-string v0, "type"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_TYPE:[B

    .line 64
    const-string v0, "contents"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    .line 65
    const-string v0, "_elapsed"

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_ELAPSED:[B

    .line 67
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    .line 69
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    .line 86
    if-eqz p1, :cond_0

    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lorg/apache/http/Header;

    :goto_0
    iput-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static escape(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    .line 260
    if-nez p0, :cond_0

    .line 261
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 317
    :goto_0
    return-object v0

    .line 265
    :cond_0
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    .line 268
    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_6

    .line 269
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 270
    sparse-switch v2, :sswitch_data_0

    .line 294
    if-ltz v2, :cond_1

    const/16 v3, 0x1f

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_2

    const/16 v3, 0x9f

    if-le v2, v3, :cond_3

    :cond_2
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_5

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_5

    .line 295
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    sget-object v3, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v7

    .line 298
    :goto_2
    if-ge v4, v3, :cond_4

    .line 299
    sget-object v5, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 272
    :sswitch_0
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :sswitch_1
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :sswitch_2
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :sswitch_3
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :sswitch_4
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :sswitch_5
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :sswitch_6
    sget-object v2, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_4
    sget-object v3, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 303
    :cond_5
    sget-object v3, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 310
    :cond_6
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    :try_start_0
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 317
    sget-object v1, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/heyzap/http/JsonStreamerEntity;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    if-nez p4, :cond_0

    .line 95
    const-string v0, "application/octet-stream"

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    new-instance v2, Lcom/heyzap/http/RequestParams$StreamWrapper;

    invoke-direct {v2, p2, p3, v0}, Lcom/heyzap/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 117
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x7b

    const/16 v11, 0x22

    const/16 v10, 0x2c

    const/16 v9, 0x3a

    const-string v8, ""

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output stream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 154
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->contentEncoding:Lorg/apache/http/Header;

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x800

    invoke-direct {v0, v1, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 161
    :goto_0
    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write(I)V

    .line 164
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 168
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 171
    iget-object v5, p0, Lcom/heyzap/http/JsonStreamerEntity;->kvParams:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 174
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 187
    :goto_3
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 157
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    goto :goto_0

    .line 174
    :cond_2
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_2

    .line 175
    :cond_3
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 177
    :cond_4
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_5

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 179
    :cond_5
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 181
    :cond_6
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 184
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 191
    :cond_8
    const/16 v0, 0x800

    new-array v5, v0, [B

    .line 194
    iget-object v0, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/heyzap/http/JsonStreamerEntity;->streamParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/http/RequestParams$StreamWrapper;

    .line 199
    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 203
    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write(I)V

    .line 206
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 208
    iget-object v0, v1, Lcom/heyzap/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 209
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write(I)V

    .line 212
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 214
    iget-object v0, v1, Lcom/heyzap/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write(I)V

    .line 218
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 219
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 220
    invoke-virtual {v4, v11}, Ljava/io/OutputStream;->write(I)V

    .line 223
    new-instance v0, Lcom/heyzap/http/Base64OutputStream;

    const/16 v7, 0x12

    invoke-direct {v0, v4, v7}, Lcom/heyzap/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 228
    :goto_5
    iget-object v7, v1, Lcom/heyzap/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    .line 229
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v7}, Lcom/heyzap/http/Base64OutputStream;->write([BII)V

    goto :goto_5

    .line 233
    :cond_9
    invoke-virtual {v0}, Lcom/heyzap/http/Base64OutputStream;->close()V

    .line 236
    invoke-virtual {v4, v11}, Ljava/io/OutputStream;->write(I)V

    .line 237
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 238
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    .line 244
    :cond_a
    sget-object v0, Lcom/heyzap/http/JsonStreamerEntity;->STREAM_ELAPSED:[B

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    const-string v2, "JsonStreamerEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uploaded JSON in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 253
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 254
    return-void
.end method
