.class public Lc/m/x/a/iab/x;
.super Ljava/lang/Object;


# instance fields
.field public m:Landroid/app/Activity;

.field n:Lc/m/x/a/iab/z;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc/m/x/a/iab/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/m/x/a/iab/x;->m:Landroid/app/Activity;

    iput-object p2, p0, Lc/m/x/a/iab/x;->n:Lc/m/x/a/iab/z;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/iab/x;->n:Lc/m/x/a/iab/z;

    invoke-interface {v0, p1, p2}, Lc/m/x/a/iab/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "{\'errorId\':-1000,\'message\':\'parse failed\'}"

    :try_start_0
    const-string v2, "errorId"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lc/m/x/a/iab/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
