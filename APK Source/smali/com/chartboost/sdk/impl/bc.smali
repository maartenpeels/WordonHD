.class public final Lcom/chartboost/sdk/impl/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bc$a;
    }
.end annotation


# static fields
.field private static c:Lcom/chartboost/sdk/impl/bc;


# instance fields
.field private a:Lcom/chartboost/sdk/impl/bc$a;

.field private b:Lcom/chartboost/sdk/Model/a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bc$a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    .line 46
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/bc$a;)Lcom/chartboost/sdk/impl/bc;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/chartboost/sdk/impl/bc;->c:Lcom/chartboost/sdk/impl/bc;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/chartboost/sdk/impl/bc;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bc;-><init>(Lcom/chartboost/sdk/impl/bc$a;)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc;->c:Lcom/chartboost/sdk/impl/bc;

    .line 40
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/bc;->c:Lcom/chartboost/sdk/impl/bc;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bc;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-string v0, "android.intent.action.VIEW"

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->f:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, v0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 131
    :cond_0
    if-nez p2, :cond_7

    .line 132
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    .line 133
    :goto_0
    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    .line 168
    :cond_1
    :goto_1
    return-void

    .line 140
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 142
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    .line 166
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    const-string v1, "market://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://market.android.com/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 149
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_4

    .line 151
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v1

    .line 159
    goto :goto_2

    .line 154
    :catch_1
    move-exception v0

    move-object v3, p1

    .line 155
    :goto_3
    const-string v1, "CBURLOpener"

    const-string v4, "Exception raised openeing an inavld playstore URL"

    invoke-static {v1, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_1

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_6

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    :cond_6
    move-object v3, p1

    goto :goto_2

    .line 154
    :catch_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :cond_7
    move-object v0, p2

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 174
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 58
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/Model/a;

    .line 61
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Lcom/chartboost/sdk/impl/bc$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-direct {p0, p2, p3, p4}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/c$b;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/bc$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/chartboost/sdk/impl/bc$1;-><init>(Lcom/chartboost/sdk/impl/bc;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V

    .line 119
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
