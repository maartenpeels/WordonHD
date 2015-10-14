.class Lcom/jirbo/adcolony/ADCDownload;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCDownload$Listener;
    }
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/d;

.field b:Lcom/jirbo/adcolony/ADCDownload$Listener;

.field c:Ljava/lang/String;

.field d:Ljava/io/File;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:Z

.field j:Z

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field l:Ljavax/net/ssl/SSLContext;

.field m:I

.field n:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/d;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/d;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;
    .param p4, "filepath"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;Z)V

    .line 46
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/jirbo/adcolony/ADCDownload;->b:Lcom/jirbo/adcolony/ADCDownload$Listener;

    .line 48
    if-eqz p4, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    .line 54
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->f:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method a()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->b:Lcom/jirbo/adcolony/ADCDownload$Listener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/ADCDownload$Listener;->on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V

    .line 287
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 72
    move v2, v0

    :goto_0
    const/4 v0, 0x3

    if-gt v2, v0, :cond_4

    .line 76
    const/4 v1, 0x0

    .line 77
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 79
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->f:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 81
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "Performing POST"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 83
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_0

    .line 85
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 86
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    .line 89
    :cond_0
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_5

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    :goto_1
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 95
    :goto_2
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    :goto_3
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "Post data: "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 100
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 103
    :goto_4
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-nez v3, :cond_3

    .line 104
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 106
    :cond_2
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 107
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Ljava/util/Map;

    .line 111
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 112
    const/4 v1, 0x0

    const/16 v5, 0x400

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 113
    :goto_7
    if-eq v1, v9, :cond_c

    move v5, v9

    .line 116
    :goto_8
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_b

    .line 118
    aget-byte v6, v0, v5

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 262
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->c(Ljava/lang/String;)V

    .line 267
    :cond_3
    const/4 v0, 0x3

    if-ne v2, v0, :cond_1d

    .line 280
    :cond_4
    iput-boolean v8, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 281
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    .line 282
    :goto_9
    return-void

    .line 90
    :cond_5
    :try_start_1
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto/16 :goto_2

    .line 95
    :cond_7
    new-instance v3, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    goto/16 :goto_3

    .line 101
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_4

    .line 106
    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_5

    .line 109
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    .line 120
    :cond_b
    const/4 v1, 0x0

    const/16 v5, 0x400

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_7

    .line 122
    :cond_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 128
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto :goto_9

    .line 135
    :cond_d
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 136
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 138
    :cond_e
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    if-eqz v3, :cond_14

    .line 140
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCStorage;->b()V

    .line 142
    :cond_f
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 147
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 149
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 150
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v11, v6

    move v6, v0

    move v0, v11

    .line 151
    :cond_10
    if-eq v0, v9, :cond_13

    .line 153
    if-lez v6, :cond_12

    .line 155
    if-le v0, v6, :cond_11

    move v0, v6

    .line 156
    :cond_11
    sub-int/2addr v6, v0

    .line 159
    :cond_12
    iget v7, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 161
    const/4 v0, 0x0

    const/16 v7, 0x400

    invoke-virtual {v4, v5, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 163
    if-nez v6, :cond_10

    .line 166
    :cond_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 167
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 168
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 170
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v3, "Downloaded "

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 257
    :goto_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 258
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto/16 :goto_9

    .line 174
    :cond_14
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    if-eqz v3, :cond_17

    .line 176
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_15

    .line 178
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 179
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    .line 182
    :cond_15
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 183
    :goto_b
    if-lez v3, :cond_17

    .line 185
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Got HTTP response "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " - counting as completed submission for 3rd party tracking."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 186
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 190
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto/16 :goto_9

    .line 182
    :cond_16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    goto :goto_b

    .line 194
    :cond_17
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_18

    .line 196
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 197
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    .line 198
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - use ssl!"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 204
    :goto_c
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - before pause"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    const-wide/16 v3, 0xbb8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :goto_d
    :try_start_3
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - getInputStream"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 214
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_19

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 215
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 218
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    .line 221
    :goto_f
    if-eq v4, v9, :cond_1b

    move v5, v9

    .line 224
    :goto_10
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_1a

    .line 226
    :try_start_4
    aget-byte v6, v3, v5

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_10

    .line 231
    :catch_1
    move-exception v0

    .line 233
    :try_start_5
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 234
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_9

    .line 202
    :cond_18
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    goto :goto_c

    .line 214
    :cond_19
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_e

    .line 228
    :cond_1a
    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_6
    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v4

    goto :goto_f

    .line 238
    :cond_1b
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 242
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 251
    :try_start_9
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 253
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v1, "androidads21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jirbo/adcolony/a;->ab:J

    .line 254
    :cond_1c
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto/16 :goto_a

    .line 244
    :catch_2
    move-exception v0

    .line 246
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 247
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_9

    .line 271
    :cond_1d
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0xa

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4

    .line 277
    :goto_11
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Trying again ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, "/3)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 72
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 209
    :catch_3
    move-exception v3

    goto/16 :goto_d

    .line 273
    :catch_4
    move-exception v0

    goto :goto_11
.end method
