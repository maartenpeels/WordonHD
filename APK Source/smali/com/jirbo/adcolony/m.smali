.class Lcom/jirbo/adcolony/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Landroid/app/Activity;

.field c:Lcom/jirbo/adcolony/ADCVideo;

.field d:Landroid/os/Handler;

.field e:Ljava/lang/Runnable;

.field f:Lcom/jirbo/adcolony/AdColonyAd;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/jirbo/adcolony/m;->a:Landroid/webkit/WebView;

    .line 51
    iput-object p3, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/jirbo/adcolony/m$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/m$1;-><init>(Lcom/jirbo/adcolony/m;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    .line 61
    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v7, "Error saving screenshot."

    .line 149
    sput-boolean v4, Lcom/jirbo/adcolony/a;->A:Z

    .line 150
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    const-string v0, "html5_interaction"

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/AdColony_Screenshots/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdColony_Screenshot_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 165
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Pictures"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Pictures/AdColony_Screenshots"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 170
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 183
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v2, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 184
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 185
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 186
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    new-instance v3, Lcom/jirbo/adcolony/m$2;

    invoke-direct {v3, p0}, Lcom/jirbo/adcolony/m$2;-><init>(Lcom/jirbo/adcolony/m;)V

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_1
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 196
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Error saving screenshot."

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] FileNotFoundException in MRAIDCommandTakeScreenshot"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    goto :goto_1

    .line 199
    :catch_1
    move-exception v0

    .line 201
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Error saving screenshot."

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] IOException in MRAIDCommandTakeScreenshot"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    goto :goto_1

    .line 172
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "url"

    const-string v10, "="

    .line 65
    const-string v0, "mraid://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    aget-object v1, v0, v8

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 82
    :goto_0
    if-eqz v1, :cond_1

    aget-object v1, v1, v9

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    array-length v3, v1

    move v4, v8

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 89
    const-string v6, "="

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    .line 90
    const-string v7, "="

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    .line 91
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    goto :goto_0

    .line 83
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/a;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v1, p0, Lcom/jirbo/adcolony/m;->f:Lcom/jirbo/adcolony/AdColonyAd;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/m;->f:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->h:Lcom/jirbo/adcolony/n$ab;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ab;->k:Lcom/jirbo/adcolony/ag;

    iget v3, v3, Lcom/jirbo/adcolony/ag;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    .line 98
    const-string v1, "send_adc_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "type"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->b(Ljava/lang/String;)V

    .line 115
    :cond_3
    :goto_3
    const-string v0, "adc_bridge.nativeCallComplete()"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->f(Ljava/lang/String;)V

    .line 116
    return-void

    .line 99
    :cond_4
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jirbo/adcolony/m;->b()V

    goto :goto_3

    .line 100
    :cond_5
    const-string v1, "open_store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_6

    const-string v0, "item"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 101
    :cond_6
    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_7

    const-string v0, "url"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :cond_7
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "url"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_8
    const-string v1, "create_calendar_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_9

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->c(Ljava/util/HashMap;)V

    goto :goto_3

    .line 104
    :cond_9
    const-string v1, "mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->d(Ljava/util/HashMap;)V

    goto :goto_3

    .line 105
    :cond_a
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_b

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->e(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 106
    :cond_b
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_c

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->f(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 107
    :cond_c
    const-string v1, "custom_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->g(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 108
    :cond_d
    const-string v1, "launch_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_e

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->h(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 109
    :cond_e
    const-string v1, "check_app_presence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->i(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 110
    :cond_f
    const-string v1, "auto_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->j(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 111
    :cond_10
    const-string v1, "save_screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/jirbo/adcolony/m;->a()V

    goto/16 :goto_3

    .line 112
    :cond_11
    const-string v1, "social_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-boolean v1, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v1, :cond_12

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->b(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 113
    :cond_12
    const-string v1, "make_in_app_purchase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/m;->a(Ljava/util/HashMap;)V

    goto/16 :goto_3
.end method

.method a(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 121
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    const-string v0, "html5_interaction"

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 125
    const-string v0, "product"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v0, "quantity"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 128
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->m:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v1, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->END_CARD:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/a;->M:Lcom/jirbo/adcolony/a$a;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 131
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandClose called"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 215
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 216
    sget-object v0, Lcom/jirbo/adcolony/a;->M:Lcom/jirbo/adcolony/a$a;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 217
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandSendADCEvent called with type: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 209
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {p1, v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 210
    return-void
.end method

.method b(Ljava/util/HashMap;)V
    .locals 5

    .prologue
    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Share this post using..."

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandOpenStore called with item: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 223
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 224
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    const-string v0, "html5_interaction"

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 240
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Unable to open store."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method c(Ljava/util/HashMap;)V
    .locals 25

    .prologue
    .line 308
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADC [info] MRAIDCommandCreateCalendarEvent called with parameters: "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 310
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/a;->A:Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    move-object v4, v0

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    const-string v3, "html5_interaction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    move-object v5, v0

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4, v5}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 317
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 320
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'hh:mmZ"

    invoke-direct {v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 321
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'hh:mm:ssZ"

    invoke-direct {v8, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 322
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v9, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    const-string v3, "description"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 326
    const-string v3, "location"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    const-string v3, "start"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 328
    const-string v3, "end"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 329
    const-string v3, "summary"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 330
    const-string v3, "recurrence"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    const-string v14, ""

    .line 332
    const-string v15, ""

    .line 334
    const-wide/16 v16, 0x0

    .line 337
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 338
    const-string v19, "\""

    const-string v20, ""

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v19, "{"

    const-string v20, ""

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v19, "}"

    const-string v20, ""

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 341
    const-string v3, ""

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 343
    const-string v3, ","

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v14, v3

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_0

    aget-object v20, v3, v15

    .line 345
    const/16 v21, 0x0

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 346
    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 347
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 349
    :cond_0
    const-string v3, "expires"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 350
    const-string v3, "frequency"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 351
    sget-object v15, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v18, "Calendar Recurrence - "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 352
    sget-object v15, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v18, "Calendar Recurrence - frequency = "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 353
    sget-object v15, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v18, "Calendar Recurrence - expires =  "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 356
    :goto_1
    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 358
    const-string v13, "description"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 364
    :cond_1
    :try_start_0
    invoke-virtual {v7, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 365
    invoke-virtual {v7, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    .line 373
    :goto_2
    if-nez v5, :cond_2

    .line 377
    :try_start_1
    invoke-virtual {v8, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 378
    invoke-virtual {v8, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 389
    :cond_2
    :goto_3
    :try_start_2
    invoke-virtual {v7, v14}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 396
    :goto_4
    if-nez v6, :cond_3

    .line 400
    :try_start_3
    invoke-virtual {v9, v14}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 408
    :cond_3
    :goto_5
    if-nez v5, :cond_4

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    move-object v3, v0

    const-string v4, "Unable to create Calendar Event."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 475
    :goto_6
    return-void

    .line 367
    :catch_0
    move-exception v15

    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    goto :goto_2

    .line 415
    :cond_4
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 416
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 417
    const-wide/16 v14, 0x0

    .line 420
    if-eqz v6, :cond_a

    .line 422
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v4, v14, v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    .line 426
    :goto_7
    const-string v6, "DAILY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 428
    const-wide/32 v14, 0x15180

    div-long/2addr v4, v14

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    .line 445
    :goto_8
    const-string v6, ""

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 447
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "vnd.android.cursor.item/event"

    .line 448
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v9, "title"

    .line 449
    invoke-virtual {v6, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v9, "description"

    .line 450
    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v9, "beginTime"

    .line 451
    invoke-virtual {v6, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "endTime"

    .line 452
    invoke-virtual {v6, v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "rrule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FREQ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "COUNT="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 454
    sget-object v6, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v7, "Calendar Recurrence - count = "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v6

    long-to-double v4, v4

    invoke-virtual {v6, v4, v5}, Lcom/jirbo/adcolony/l;->b(D)Lcom/jirbo/adcolony/l;

    .line 469
    :goto_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    .line 471
    :catch_1
    move-exception v3

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    move-object v3, v0

    const-string v4, "Unable to create Calendar Event."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 430
    :cond_5
    const-string v6, "WEEKLY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 432
    const-wide/32 v14, 0x93a80

    div-long/2addr v4, v14

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    goto/16 :goto_8

    .line 434
    :cond_6
    const-string v6, "MONTHLY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 436
    const-wide/32 v14, 0x2820a8

    div-long/2addr v4, v14

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    goto/16 :goto_8

    .line 438
    :cond_7
    const-string v6, "YEARLY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 440
    const-wide/32 v14, 0x1e187e0

    div-long/2addr v4, v14

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    goto/16 :goto_8

    .line 458
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.item/event"

    .line 459
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    .line 460
    invoke-virtual {v3, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "description"

    .line 461
    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "beginTime"

    .line 462
    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "endTime"

    .line 463
    invoke-virtual {v3, v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    goto :goto_9

    .line 391
    :catch_2
    move-exception v7

    goto/16 :goto_4

    .line 402
    :catch_3
    move-exception v7

    goto/16 :goto_5

    .line 380
    :catch_4
    move-exception v8

    goto/16 :goto_3

    :cond_9
    move-wide/from16 v4, v16

    goto/16 :goto_8

    :cond_a
    move-wide v4, v14

    goto/16 :goto_7

    :cond_b
    move-object v3, v15

    goto/16 :goto_1
.end method

.method d(Ljava/lang/String;)V
    .locals 9

    .prologue
    const-string v8, "html5_interaction"

    const-string v7, "browser"

    const-string v4, "adcvideo"

    const-string v6, "http"

    const-string v5, "android.intent.action.VIEW"

    .line 246
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandOpen called with url: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 249
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "adcvideo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "adcvideo"

    const-string v1, "http"

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCVideo;->a(Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v1, "youtube"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const/16 v1, 0x76

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "safari"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "safari"

    const-string v2, "http"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 278
    :cond_2
    const-string v1, "browser"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    const-string v1, "html5_interaction"

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v8, v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 282
    const-string v1, "browser"

    const-string v1, "http"

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 284
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 290
    :cond_3
    const-string v1, "html5_interaction"

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v8, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 291
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 292
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-class v2, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method d(Ljava/util/HashMap;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 479
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandMail called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 481
    sput-boolean v2, Lcom/jirbo/adcolony/a;->A:Z

    .line 482
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    const-string v0, "body"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    const-string v0, "to"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    const-string v3, "html5_interaction"

    iget-object v4, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4, v5}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 494
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    const-string v4, "plain/text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 497
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 504
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Unable to launch email client."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandExpand called with url: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 303
    const-string v0, "adc_bridge.fireChangeEvent({state:\'expanded\'});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->f(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method e(Ljava/util/HashMap;)V
    .locals 6

    .prologue
    .line 510
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandSMS called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 512
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 513
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    const-string v0, "to"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    const-string v0, "body"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v2, v3, v4}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 524
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "sms_body"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Failed to create sms."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method f(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 537
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandTel called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 539
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 540
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v1, v2, v3}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 550
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 556
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Failed to dial number."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    if-nez p1, :cond_0

    const-string v0, ""

    .line 616
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method g(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 562
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandSendCustomADCEvent called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 563
    const-string v0, "event_type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"event_type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"ad_slot\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->f:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAd;->h:Lcom/jirbo/adcolony/n$ab;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$ab;->k:Lcom/jirbo/adcolony/ag;

    iget v1, v1, Lcom/jirbo/adcolony/ag;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    const-string v1, "custom_event"

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v1, v0, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 566
    return-void
.end method

.method h(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 570
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandLaunchApp called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 572
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 573
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/jirbo/adcolony/m;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/jirbo/adcolony/m;->c:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v1, v2, v3}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 588
    iget-object v0, p0, Lcom/jirbo/adcolony/m;->b:Landroid/app/Activity;

    const-string v1, "Failed to launch external application."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method i(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 595
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandCheckAppPresence called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 596
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v0}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;)Z

    move-result v1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adc_bridge.fireAppPresenceEvent(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/m;->f(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method j(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 604
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC [info] MRAIDCommandCheckAutoPlay called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 605
    return-void
.end method
