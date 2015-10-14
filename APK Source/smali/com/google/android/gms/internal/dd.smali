.class public final Lcom/google/android/gms/internal/dd;
.super Ljava/lang/Object;


# static fields
.field private static final pH:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dd;->pH:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;
    .locals 24

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ad_base_url"

    const/4 v4, 0x0

    move-object v0, v3

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "ad_url"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_size"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "ad_html"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-string v8, "debug_dialog"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v8, "interstitial_timeout"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "interstitial_timeout"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    :goto_0
    const-string v10, "orientation"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const-string v12, "portrait"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/dq;->bA()I

    move-result v10

    :goto_1
    const/4 v11, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/cz;

    const/16 p1, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    :goto_2
    return-object p0

    :cond_0
    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_1
    const-string v12, "landscape"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {}, Lcom/google/android/gms/internal/dq;->bz()I

    move-result v10

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/dx;->rq:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/dc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;

    move-result-object p0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->ol:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->ps:J

    move-wide v4, v0

    move-wide/from16 v18, v4

    move-object/from16 v5, p2

    move-object/from16 v4, p1

    :goto_3
    const-string p1, "click_urls"

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p0, :cond_5

    const/16 p2, 0x0

    :goto_4
    if-eqz p1, :cond_13

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct/range {p2 .. p2}, Ljava/util/LinkedList;-><init>()V

    :cond_3
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    const-string p0, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/cz;

    const/16 p1, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not parse the mediation config: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/cz;

    const/16 p1, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    goto/16 :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->ne:Ljava/util/List;

    move-object/from16 p2, v0

    goto :goto_4

    :cond_6
    move-object/from16 v6, p2

    :goto_6
    const-string p1, "impression_urls"

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p0, :cond_8

    const/16 p2, 0x0

    :goto_7
    if-eqz p1, :cond_12

    if-nez p2, :cond_7

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct/range {p2 .. p2}, Ljava/util/LinkedList;-><init>()V

    :cond_7
    const/4 v7, 0x0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_9

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->nf:Ljava/util/List;

    move-object/from16 p2, v0

    goto :goto_7

    :cond_9
    move-object/from16 v7, p2

    :goto_9
    const-string p1, "manual_impression_urls"

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p0, :cond_b

    const/16 p2, 0x0

    :goto_a
    if-eqz p1, :cond_11

    if-nez p2, :cond_a

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct/range {p2 .. p2}, Ljava/util/LinkedList;-><init>()V

    :cond_a
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_c

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pq:Ljava/util/List;

    move-object/from16 p2, v0

    goto :goto_a

    :cond_c
    move-object/from16 v13, p2

    :goto_c
    if-eqz p0, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/cz;->orientation:I

    move/from16 p1, v0

    const/16 p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/cz;->orientation:I

    move/from16 p1, v0

    :goto_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->pn:J

    move-wide v10, v0

    const-wide/16 v14, 0x0

    cmp-long p2, v10, v14

    if-lez p2, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->pn:J

    move-wide v8, v0

    move/from16 v16, p1

    :goto_e
    const-string p0, "active_view"

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 p0, 0x0

    const-string p1, "ad_is_javascript"

    const/16 p2, 0x0

    move-object v0, v3

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_d

    const-string p0, "ad_passback_url"

    const/16 p1, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v22, p0

    :goto_f
    new-instance v3, Lcom/google/android/gms/internal/cz;

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v14, -0x1

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/cz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 p0, v3

    goto/16 :goto_2

    :cond_d
    move-object/from16 v22, p0

    goto :goto_f

    :cond_e
    move/from16 v16, p1

    goto :goto_e

    :cond_f
    move/from16 p1, v10

    goto :goto_d

    :cond_10
    move/from16 v16, v10

    goto :goto_e

    :cond_11
    move-object/from16 v13, p2

    goto :goto_c

    :cond_12
    move-object/from16 v7, p2

    goto/16 :goto_9

    :cond_13
    move-object/from16 v6, p2

    goto/16 :goto_6

    :cond_14
    move-object/from16 p0, v11

    move-wide/from16 v18, v6

    move-object/from16 v4, p2

    goto/16 :goto_3

    :cond_15
    move v10, v11

    goto/16 :goto_1
.end method

.method public static a(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/dg;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    const-string v1, "eid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->pf:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v1, "ad_pos"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pf:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dd;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ah;)V

    const-string v1, "format"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v2, v2, Lcom/google/android/gms/internal/ak;->lS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget v1, v1, Lcom/google/android/gms/internal/ak;->width:I

    if-ne v1, v10, :cond_2

    const-string v1, "smart_w"

    const-string v2, "full"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget v1, v1, Lcom/google/android/gms/internal/ak;->height:I

    if-ne v1, v9, :cond_3

    const-string v1, "smart_h"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v2, v2, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v6, v5, Lcom/google/android/gms/internal/ak;->width:I

    if-ne v6, v10, :cond_5

    iget v6, v5, Lcom/google/android/gms/internal/ak;->widthPixels:I

    int-to-float v6, v6

    iget v7, p1, Lcom/google/android/gms/internal/dg;->qp:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/google/android/gms/internal/ak;->height:I

    if-ne v6, v9, :cond_6

    iget v5, v5, Lcom/google/android/gms/internal/ak;->heightPixels:I

    int-to-float v5, v5

    iget v6, p1, Lcom/google/android/gms/internal/dg;->qp:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget v6, v5, Lcom/google/android/gms/internal/ak;->width:I

    goto :goto_1

    :cond_6
    iget v5, v5, Lcom/google/android/gms/internal/ak;->height:I

    goto :goto_2

    :cond_7
    const-string v2, "sz"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "slotname"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pn"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->ph:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_9

    const-string v1, "vc"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->ph:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v1, "ms"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "seq_num"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "js"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    iget-object v2, v2, Lcom/google/android/gms/internal/dx;->rq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/dd;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/dg;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    iget v1, v1, Lcom/google/android/gms/internal/ah;->versionCode:I

    if-lt v1, v8, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/internal/ah;->lP:Landroid/location/Location;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/internal/ah;->lP:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dd;->a(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/cx;->versionCode:I

    if-lt v1, v8, :cond_b

    const-string v1, "quality_signals"

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pl:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->n(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->p(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad Request JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->y(Ljava/lang/String;)V

    :cond_c
    invoke-static {v0}, Lcom/google/android/gms/internal/dq;->p(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem serializing ad request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ah;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ah;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/dn;->bx()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ah;->lH:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/dd;->pH:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ah;->lH:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/ah;->lI:I

    if-eq v0, v5, :cond_3

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/internal/ah;->lI:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->lJ:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->lJ:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/ah;->lL:I

    if-eq v0, v5, :cond_5

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/internal/ah;->lL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ah;->lK:Z

    if-eqz v0, :cond_6

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/ah;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ah;->lM:Z

    if-eqz v0, :cond_7

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->lN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->lN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/internal/av;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/internal/av;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/dd;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/av;)V

    :cond_9
    iget v0, p1, Lcom/google/android/gms/internal/ah;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->lQ:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/internal/ah;->lQ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/av;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/av;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p1, Lcom/google/android/gms/internal/av;->mq:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "acolor"

    iget v1, p1, Lcom/google/android/gms/internal/av;->mq:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/av;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bgcolor"

    iget v1, p1, Lcom/google/android/gms/internal/av;->backgroundColor:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/av;->mr:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/av;->ms:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gradientto"

    iget v1, p1, Lcom/google/android/gms/internal/av;->mr:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gradientfrom"

    iget v1, p1, Lcom/google/android/gms/internal/av;->ms:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/av;->mt:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bcolor"

    iget v1, p1, Lcom/google/android/gms/internal/av;->mt:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "bthick"

    iget v1, p1, Lcom/google/android/gms/internal/av;->mu:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/av;->mv:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "btype"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/av;->mw:I

    packed-switch v0, :pswitch_data_1

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/av;->my:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/internal/av;->my:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/av;->mz:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/internal/av;->mz:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/internal/av;->mA:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/internal/av;->mA:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/internal/av;->mB:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/av;->mC:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/internal/av;->mC:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    :pswitch_1
    const-string v0, "dashed"

    goto :goto_0

    :pswitch_2
    const-string v0, "dotted"

    goto :goto_0

    :pswitch_3
    const-string v0, "solid"

    goto :goto_0

    :pswitch_4
    const-string v0, "dark"

    goto :goto_1

    :pswitch_5
    const-string v0, "light"

    goto :goto_1

    :pswitch_6
    const-string v0, "medium"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/dg;",
            ")V"
        }
    .end annotation

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->pZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dg;->qa:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->l(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dg;->qb:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->l(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/dg;->qc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/dg;->qc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/dg;->qd:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dg;->qe:Z

    if-eqz v0, :cond_1

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dg;->qf:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->l(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dg;->qg:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dd;->l(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/dg;->qh:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/dg;->qi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/dg;->qi:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/dg;->qk:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->ql:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u_sd"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qp:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v1, p1, Lcom/google/android/gms/internal/dg;->qq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static l(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static m(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
