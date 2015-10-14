.class final Lcom/milkmangames/extensions/android/coremobile/l;
.super Lcom/milkmangames/extensions/android/coremobile/x;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/l;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/coremobile/x;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/l;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-long v2, v2

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
