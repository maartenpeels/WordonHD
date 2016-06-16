.class public final Lcom/chartboost/sdk/Libraries/CBUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static final b:Ljavax/security/auth/x500/X500Principal;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->b:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 2

    .prologue
    .line 133
    int-to-float v0, p0

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before modifying or accessing preferences."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cbPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v0, "UTF-8"

    const-string v5, ""

    .line 104
    if-nez p0, :cond_0

    const-string v0, ""

    move-object v0, v5

    .line 122
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 110
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    if-eqz v0, :cond_3

    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    if-eqz v3, :cond_4

    const-string v0, "UTF-8"

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This method requires UTF-8 encoding support"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :cond_3
    :try_start_1
    const-string v0, ""

    move-object v0, v5

    goto :goto_2

    .line 116
    :cond_4
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 260
    sput-object p0, Lcom/chartboost/sdk/Libraries/CBUtility;->c:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 3

    .prologue
    .line 230
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "CBUtility"

    const-string v2, "Exception raised calling entity.consumeContent()"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)V
    .locals 3

    .prologue
    .line 221
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "CBUtility"

    const-string v2, "Exception raised calling consumeQuietly over http response"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    move v3, v6

    .line 84
    :goto_0
    :try_start_1
    array-length v0, v1

    if-ge v2, v0, :cond_3

    .line 85
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 86
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 88
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v4, Lcom/chartboost/sdk/Libraries/CBUtility;->b:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 98
    :goto_2
    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    .line 100
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 84
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v1, v6

    .line 97
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Lcom/chartboost/sdk/Libraries/f;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 143
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v1

    .line 144
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 147
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 150
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v8

    .line 162
    :goto_0
    if-ne v0, v5, :cond_3

    move v0, v5

    .line 177
    :goto_1
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_6

    .line 183
    :cond_0
    :goto_2
    if-eqz v0, :cond_8

    .line 184
    packed-switch v2, :pswitch_data_0

    .line 193
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->a:Lcom/chartboost/sdk/Libraries/f;

    .line 205
    :goto_3
    return-object v0

    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_2

    move v0, v5

    .line 154
    goto :goto_0

    :cond_2
    move v0, v6

    .line 156
    goto :goto_0

    .line 164
    :cond_3
    if-ne v0, v6, :cond_4

    move v0, v7

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    if-ne v0, v8, :cond_9

    .line 169
    if-ne v1, v5, :cond_5

    move v0, v5

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    if-ne v1, v6, :cond_9

    move v0, v7

    .line 172
    goto :goto_1

    .line 180
    :cond_6
    if-nez v0, :cond_7

    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_2

    .line 186
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->g:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 188
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->c:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 190
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->h:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 196
    :cond_8
    packed-switch v2, :pswitch_data_1

    .line 205
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 198
    :pswitch_3
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->e:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 200
    :pswitch_4
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 202
    :pswitch_5
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    :cond_9
    move v0, v5

    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 196
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Chartboost-Android-SDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "5.1.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v3

    goto :goto_0
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static throwProguardError(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 211
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Chartboost library error! Have you used proguard on your application? Make sure to add the line \'-keep class com.chartboost.sdk.** { *; }\' to your proguard config file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
