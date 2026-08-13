<mxfile host="app.diagrams.net">
  <diagram name="Page-1" id="gK4buULps2QpzKvw6NrA">
    <mxGraphModel dx="1471" dy="851" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <UserObject label="" mermaidData="{&#xa;  &quot;data&quot;: &quot;erDiagram\n\n    USERS {\n        INT user_id PK\n        VARCHAR_100 name\n        VARCHAR_100 email UK\n        VARCHAR_255 password\n        VARCHAR_15 phone\n        ENUM_citizen_admin role\n        TIMESTAMP created_at\n    }\n\n    ISSUE {\n        INT issue_id PK\n        VARCHAR_200 title\n        TEXT description\n        VARCHAR_255 image_url\n        TIMESTAMP created_at\n        TIMESTAMP updated_at\n        INT user_id FK\n        INT category_id FK\n        INT location_id FK\n        INT status_id FK\n    }\n\n    CATEGORY {\n        INT category_id PK\n        VARCHAR_100 category_name\n        VARCHAR_255 description\n        TIMESTAMP created_at\n    }\n\n    LOCATION {\n        INT location_id PK\n        VARCHAR_255 address\n        DECIMAL_10_8 latitude\n        DECIMAL_11_8 longitude\n        TIMESTAMP created_at\n    }\n\n    STATUS {\n        INT status_id PK\n        VARCHAR_50 status_name\n        VARCHAR_255 description\n        TIMESTAMP created_at\n    }\n\n    COMMENT {\n        INT comment_id PK\n        TEXT comment_text\n        TIMESTAMP created_at\n        INT user_id FK\n        INT issue_id FK\n    }\n\n    ADMIN {\n        INT admin_id PK\n        VARCHAR_100 name\n        VARCHAR_100 email\n        VARCHAR_255 password\n        TIMESTAMP created_at\n    }\n\n    USERS ||--o{ ISSUE : creates\n    USERS ||--o{ COMMENT : writes\n    ISSUE ||--o{ COMMENT : has\n    CATEGORY ||--o{ ISSUE : categorizes\n    LOCATION ||--o{ ISSUE : located_at\n    STATUS ||--o{ ISSUE : has_status&quot;,&#xa;  &quot;config&quot;: null&#xa;}" id="rC4zLYkIIsgXgdHZqgya-1">
          <mxCell connectable="0" parent="1" style="group;transparentBounds=1;editIcon=1;lockedGroup=0;groupPadding=10;" vertex="1">
            <mxGeometry as="geometry" />
          </mxCell>
        </UserObject>
        <UserObject label="USERS" mermaidId="n:USERS" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="USERS" id="rC4zLYkIIsgXgdHZqgya-2">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="344" width="323" x="30" y="30" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-3" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-4" parent="rC4zLYkIIsgXgdHZqgya-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-5" parent="rC4zLYkIIsgXgdHZqgya-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="user_id" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-6" parent="rC4zLYkIIsgXgdHZqgya-3" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-7" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-8" parent="rC4zLYkIIsgXgdHZqgya-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_100" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-9" parent="rC4zLYkIIsgXgdHZqgya-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="name" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-10" parent="rC4zLYkIIsgXgdHZqgya-7" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-11" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-12" parent="rC4zLYkIIsgXgdHZqgya-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_100" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-13" parent="rC4zLYkIIsgXgdHZqgya-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="email" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-14" parent="rC4zLYkIIsgXgdHZqgya-11" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="UK" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-15" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-16" parent="rC4zLYkIIsgXgdHZqgya-15" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_255" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-17" parent="rC4zLYkIIsgXgdHZqgya-15" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="password" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-18" parent="rC4zLYkIIsgXgdHZqgya-15" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-19" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="215" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-20" parent="rC4zLYkIIsgXgdHZqgya-19" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_15" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-21" parent="rC4zLYkIIsgXgdHZqgya-19" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="phone" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-22" parent="rC4zLYkIIsgXgdHZqgya-19" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-23" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="258" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-24" parent="rC4zLYkIIsgXgdHZqgya-23" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="ENUM_citizen_admin" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-25" parent="rC4zLYkIIsgXgdHZqgya-23" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="role" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-26" parent="rC4zLYkIIsgXgdHZqgya-23" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-27" parent="rC4zLYkIIsgXgdHZqgya-2" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="323" y="301" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-28" parent="rC4zLYkIIsgXgdHZqgya-27" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="175" as="geometry">
            <mxRectangle height="43" width="175" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-29" parent="rC4zLYkIIsgXgdHZqgya-27" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="103" x="175" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-30" parent="rC4zLYkIIsgXgdHZqgya-27" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="45" x="278" as="geometry">
            <mxRectangle height="43" width="45" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="ISSUE" mermaidId="n:ISSUE" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="ISSUE" id="rC4zLYkIIsgXgdHZqgya-31">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="473" width="276" x="631" y="493" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-32" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-33" parent="rC4zLYkIIsgXgdHZqgya-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-34" parent="rC4zLYkIIsgXgdHZqgya-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="issue_id" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-35" parent="rC4zLYkIIsgXgdHZqgya-32" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-36" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-37" parent="rC4zLYkIIsgXgdHZqgya-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_200" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-38" parent="rC4zLYkIIsgXgdHZqgya-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="title" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-39" parent="rC4zLYkIIsgXgdHZqgya-36" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-40" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-41" parent="rC4zLYkIIsgXgdHZqgya-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-42" parent="rC4zLYkIIsgXgdHZqgya-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="description" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-43" parent="rC4zLYkIIsgXgdHZqgya-40" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-44" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-45" parent="rC4zLYkIIsgXgdHZqgya-44" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_255" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-46" parent="rC4zLYkIIsgXgdHZqgya-44" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="image_url" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-47" parent="rC4zLYkIIsgXgdHZqgya-44" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-48" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="215" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-49" parent="rC4zLYkIIsgXgdHZqgya-48" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-50" parent="rC4zLYkIIsgXgdHZqgya-48" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-51" parent="rC4zLYkIIsgXgdHZqgya-48" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-52" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="258" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-53" parent="rC4zLYkIIsgXgdHZqgya-52" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-54" parent="rC4zLYkIIsgXgdHZqgya-52" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="updated_at" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-55" parent="rC4zLYkIIsgXgdHZqgya-52" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-56" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="301" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-57" parent="rC4zLYkIIsgXgdHZqgya-56" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-58" parent="rC4zLYkIIsgXgdHZqgya-56" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="user_id" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-59" parent="rC4zLYkIIsgXgdHZqgya-56" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-60" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="344" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-61" parent="rC4zLYkIIsgXgdHZqgya-60" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-62" parent="rC4zLYkIIsgXgdHZqgya-60" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="category_id" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-63" parent="rC4zLYkIIsgXgdHZqgya-60" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-64" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="387" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-65" parent="rC4zLYkIIsgXgdHZqgya-64" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-66" parent="rC4zLYkIIsgXgdHZqgya-64" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="location_id" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-67" parent="rC4zLYkIIsgXgdHZqgya-64" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-68" parent="rC4zLYkIIsgXgdHZqgya-31" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="430" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-69" parent="rC4zLYkIIsgXgdHZqgya-68" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-70" parent="rC4zLYkIIsgXgdHZqgya-68" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="status_id" vertex="1">
          <mxGeometry height="43" width="109" x="124" as="geometry">
            <mxRectangle height="43" width="109" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-71" parent="rC4zLYkIIsgXgdHZqgya-68" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="CATEGORY" mermaidId="n:CATEGORY" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="CATEGORY" id="rC4zLYkIIsgXgdHZqgya-72">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="215" width="302" x="433" y="95" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-73" parent="rC4zLYkIIsgXgdHZqgya-72" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="302" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-74" parent="rC4zLYkIIsgXgdHZqgya-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-75" parent="rC4zLYkIIsgXgdHZqgya-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="category_id" vertex="1">
          <mxGeometry height="43" width="135" x="124" as="geometry">
            <mxRectangle height="43" width="135" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-76" parent="rC4zLYkIIsgXgdHZqgya-73" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="259" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-77" parent="rC4zLYkIIsgXgdHZqgya-72" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="302" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-78" parent="rC4zLYkIIsgXgdHZqgya-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_100" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-79" parent="rC4zLYkIIsgXgdHZqgya-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="category_name" vertex="1">
          <mxGeometry height="43" width="135" x="124" as="geometry">
            <mxRectangle height="43" width="135" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-80" parent="rC4zLYkIIsgXgdHZqgya-77" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="259" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-81" parent="rC4zLYkIIsgXgdHZqgya-72" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="302" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-82" parent="rC4zLYkIIsgXgdHZqgya-81" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_255" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-83" parent="rC4zLYkIIsgXgdHZqgya-81" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="description" vertex="1">
          <mxGeometry height="43" width="135" x="124" as="geometry">
            <mxRectangle height="43" width="135" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-84" parent="rC4zLYkIIsgXgdHZqgya-81" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="259" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-85" parent="rC4zLYkIIsgXgdHZqgya-72" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="302" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-86" parent="rC4zLYkIIsgXgdHZqgya-85" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-87" parent="rC4zLYkIIsgXgdHZqgya-85" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="135" x="124" as="geometry">
            <mxRectangle height="43" width="135" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-88" parent="rC4zLYkIIsgXgdHZqgya-85" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="259" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="LOCATION" mermaidId="n:LOCATION" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="LOCATION" id="rC4zLYkIIsgXgdHZqgya-89">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="258" width="276" x="815" y="73" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-90" parent="rC4zLYkIIsgXgdHZqgya-89" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-91" parent="rC4zLYkIIsgXgdHZqgya-90" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="128" as="geometry">
            <mxRectangle height="43" width="128" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-92" parent="rC4zLYkIIsgXgdHZqgya-90" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="location_id" vertex="1">
          <mxGeometry height="43" width="105" x="128" as="geometry">
            <mxRectangle height="43" width="105" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-93" parent="rC4zLYkIIsgXgdHZqgya-90" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-94" parent="rC4zLYkIIsgXgdHZqgya-89" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-95" parent="rC4zLYkIIsgXgdHZqgya-94" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_255" vertex="1">
          <mxGeometry height="43" width="128" as="geometry">
            <mxRectangle height="43" width="128" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-96" parent="rC4zLYkIIsgXgdHZqgya-94" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="address" vertex="1">
          <mxGeometry height="43" width="105" x="128" as="geometry">
            <mxRectangle height="43" width="105" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-97" parent="rC4zLYkIIsgXgdHZqgya-94" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-98" parent="rC4zLYkIIsgXgdHZqgya-89" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-99" parent="rC4zLYkIIsgXgdHZqgya-98" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="DECIMAL_10_8" vertex="1">
          <mxGeometry height="43" width="128" as="geometry">
            <mxRectangle height="43" width="128" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-100" parent="rC4zLYkIIsgXgdHZqgya-98" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="latitude" vertex="1">
          <mxGeometry height="43" width="105" x="128" as="geometry">
            <mxRectangle height="43" width="105" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-101" parent="rC4zLYkIIsgXgdHZqgya-98" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-102" parent="rC4zLYkIIsgXgdHZqgya-89" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-103" parent="rC4zLYkIIsgXgdHZqgya-102" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="DECIMAL_11_8" vertex="1">
          <mxGeometry height="43" width="128" as="geometry">
            <mxRectangle height="43" width="128" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-104" parent="rC4zLYkIIsgXgdHZqgya-102" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="longitude" vertex="1">
          <mxGeometry height="43" width="105" x="128" as="geometry">
            <mxRectangle height="43" width="105" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-105" parent="rC4zLYkIIsgXgdHZqgya-102" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-106" parent="rC4zLYkIIsgXgdHZqgya-89" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="276" y="215" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-107" parent="rC4zLYkIIsgXgdHZqgya-106" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="128" as="geometry">
            <mxRectangle height="43" width="128" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-108" parent="rC4zLYkIIsgXgdHZqgya-106" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="105" x="128" as="geometry">
            <mxRectangle height="43" width="105" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-109" parent="rC4zLYkIIsgXgdHZqgya-106" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="233" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="STATUS" mermaidId="n:STATUS" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="STATUS" id="rC4zLYkIIsgXgdHZqgya-110">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="215" width="282" x="1171" y="95" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-111" parent="rC4zLYkIIsgXgdHZqgya-110" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="282" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-112" parent="rC4zLYkIIsgXgdHZqgya-111" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-113" parent="rC4zLYkIIsgXgdHZqgya-111" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="status_id" vertex="1">
          <mxGeometry height="43" width="115" x="124" as="geometry">
            <mxRectangle height="43" width="115" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-114" parent="rC4zLYkIIsgXgdHZqgya-111" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="239" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-115" parent="rC4zLYkIIsgXgdHZqgya-110" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="282" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-116" parent="rC4zLYkIIsgXgdHZqgya-115" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_50" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-117" parent="rC4zLYkIIsgXgdHZqgya-115" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="status_name" vertex="1">
          <mxGeometry height="43" width="115" x="124" as="geometry">
            <mxRectangle height="43" width="115" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-118" parent="rC4zLYkIIsgXgdHZqgya-115" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="239" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-119" parent="rC4zLYkIIsgXgdHZqgya-110" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="282" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-120" parent="rC4zLYkIIsgXgdHZqgya-119" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_255" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-121" parent="rC4zLYkIIsgXgdHZqgya-119" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="description" vertex="1">
          <mxGeometry height="43" width="115" x="124" as="geometry">
            <mxRectangle height="43" width="115" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-122" parent="rC4zLYkIIsgXgdHZqgya-119" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="239" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-123" parent="rC4zLYkIIsgXgdHZqgya-110" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="282" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-124" parent="rC4zLYkIIsgXgdHZqgya-123" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-125" parent="rC4zLYkIIsgXgdHZqgya-123" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="115" x="124" as="geometry">
            <mxRectangle height="43" width="115" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-126" parent="rC4zLYkIIsgXgdHZqgya-123" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="239" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="COMMENT" mermaidId="n:COMMENT" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="COMMENT" id="rC4zLYkIIsgXgdHZqgya-127">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="258" width="277" x="434" y="1085" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-128" parent="rC4zLYkIIsgXgdHZqgya-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="277" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-129" parent="rC4zLYkIIsgXgdHZqgya-128" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="104" as="geometry">
            <mxRectangle height="43" width="104" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-130" parent="rC4zLYkIIsgXgdHZqgya-128" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="comment_id" vertex="1">
          <mxGeometry height="43" width="130" x="104" as="geometry">
            <mxRectangle height="43" width="130" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-131" parent="rC4zLYkIIsgXgdHZqgya-128" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="234" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-132" parent="rC4zLYkIIsgXgdHZqgya-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="277" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-133" parent="rC4zLYkIIsgXgdHZqgya-132" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TEXT" vertex="1">
          <mxGeometry height="43" width="104" as="geometry">
            <mxRectangle height="43" width="104" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-134" parent="rC4zLYkIIsgXgdHZqgya-132" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="comment_text" vertex="1">
          <mxGeometry height="43" width="130" x="104" as="geometry">
            <mxRectangle height="43" width="130" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-135" parent="rC4zLYkIIsgXgdHZqgya-132" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="234" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-136" parent="rC4zLYkIIsgXgdHZqgya-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="277" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-137" parent="rC4zLYkIIsgXgdHZqgya-136" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="104" as="geometry">
            <mxRectangle height="43" width="104" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-138" parent="rC4zLYkIIsgXgdHZqgya-136" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="130" x="104" as="geometry">
            <mxRectangle height="43" width="130" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-139" parent="rC4zLYkIIsgXgdHZqgya-136" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="234" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-140" parent="rC4zLYkIIsgXgdHZqgya-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="277" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-141" parent="rC4zLYkIIsgXgdHZqgya-140" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="104" as="geometry">
            <mxRectangle height="43" width="104" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-142" parent="rC4zLYkIIsgXgdHZqgya-140" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="user_id" vertex="1">
          <mxGeometry height="43" width="130" x="104" as="geometry">
            <mxRectangle height="43" width="130" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-143" parent="rC4zLYkIIsgXgdHZqgya-140" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="234" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-144" parent="rC4zLYkIIsgXgdHZqgya-127" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="277" y="215" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-145" parent="rC4zLYkIIsgXgdHZqgya-144" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="104" as="geometry">
            <mxRectangle height="43" width="104" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-146" parent="rC4zLYkIIsgXgdHZqgya-144" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="issue_id" vertex="1">
          <mxGeometry height="43" width="130" x="104" as="geometry">
            <mxRectangle height="43" width="130" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-147" parent="rC4zLYkIIsgXgdHZqgya-144" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="FK" vertex="1">
          <mxGeometry height="43" width="43" x="234" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="ADMIN" mermaidId="n:ADMIN" mermaidBaseStyle="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" mermaidBaseValue="ADMIN" id="rC4zLYkIIsgXgdHZqgya-148">
          <mxCell parent="rC4zLYkIIsgXgdHZqgya-1" style="shape=table;startSize=43;container=1;collapsible=0;childLayout=tableLayout;fixedRows=1;rowLines=1;fontSize=16;fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;strokeWidth=1;align=center;resizeLast=1;html=1;fillColor=light-dark(#ECECFF,#1f2020);strokeColor=light-dark(#9370DB,#cccccc);fontColor=light-dark(#333333,#cccccc);" vertex="1">
            <mxGeometry height="258" width="270" x="1533" y="73" as="geometry" />
          </mxCell>
        </UserObject>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-149" parent="rC4zLYkIIsgXgdHZqgya-148" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="270" y="43" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-150" parent="rC4zLYkIIsgXgdHZqgya-149" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="INT" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-151" parent="rC4zLYkIIsgXgdHZqgya-149" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="admin_id" vertex="1">
          <mxGeometry height="43" width="103" x="124" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-152" parent="rC4zLYkIIsgXgdHZqgya-149" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="PK" vertex="1">
          <mxGeometry height="43" width="43" x="227" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-153" parent="rC4zLYkIIsgXgdHZqgya-148" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="270" y="86" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-154" parent="rC4zLYkIIsgXgdHZqgya-153" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_100" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-155" parent="rC4zLYkIIsgXgdHZqgya-153" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="name" vertex="1">
          <mxGeometry height="43" width="103" x="124" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-156" parent="rC4zLYkIIsgXgdHZqgya-153" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="227" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-157" parent="rC4zLYkIIsgXgdHZqgya-148" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="270" y="129" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-158" parent="rC4zLYkIIsgXgdHZqgya-157" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_100" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-159" parent="rC4zLYkIIsgXgdHZqgya-157" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="email" vertex="1">
          <mxGeometry height="43" width="103" x="124" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-160" parent="rC4zLYkIIsgXgdHZqgya-157" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="227" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-161" parent="rC4zLYkIIsgXgdHZqgya-148" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#F1F1FF,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="270" y="172" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-162" parent="rC4zLYkIIsgXgdHZqgya-161" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="VARCHAR_255" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-163" parent="rC4zLYkIIsgXgdHZqgya-161" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="password" vertex="1">
          <mxGeometry height="43" width="103" x="124" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-164" parent="rC4zLYkIIsgXgdHZqgya-161" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="227" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-165" parent="rC4zLYkIIsgXgdHZqgya-148" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=1;fillColor=light-dark(#ffffff,#1f2020);strokeColor=inherit;strokeWidth=1;collapsible=0;dropTarget=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;top=0;left=0;right=0;bottom=0;" vertex="1">
          <mxGeometry height="43" width="270" y="215" as="geometry" />
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-166" parent="rC4zLYkIIsgXgdHZqgya-165" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="TIMESTAMP" vertex="1">
          <mxGeometry height="43" width="124" as="geometry">
            <mxRectangle height="43" width="124" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-167" parent="rC4zLYkIIsgXgdHZqgya-165" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="created_at" vertex="1">
          <mxGeometry height="43" width="103" x="124" as="geometry">
            <mxRectangle height="43" width="103" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rC4zLYkIIsgXgdHZqgya-168" parent="rC4zLYkIIsgXgdHZqgya-165" style="shape=partialRectangle;connectable=0;fillColor=none;strokeColor=light-dark(#9370DB,#cccccc);strokeWidth=1;fontColor=light-dark(#333333,#cccccc);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;top=1;left=1;bottom=1;right=1;align=left;spacingLeft=8;overflow=hidden;fontSize=16;" value="" vertex="1">
          <mxGeometry height="43" width="43" x="227" as="geometry">
            <mxRectangle height="43" width="43" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <UserObject label="creates" mermaidId="e:USERS-&gt;ISSUE#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=1;exitY=0.84;entryX=0;entryY=0.16;" mermaidBaseValue="creates" id="rC4zLYkIIsgXgdHZqgya-169">
          <mxCell edge="1" parent="rC4zLYkIIsgXgdHZqgya-1" source="rC4zLYkIIsgXgdHZqgya-2" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=1;exitY=0.84;entryX=0;entryY=0.16;rounded=0;" target="rC4zLYkIIsgXgdHZqgya-31">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="492" y="569" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="writes" mermaidId="e:USERS-&gt;COMMENT#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.84;exitY=1;entryX=0.16;entryY=0;" mermaidBaseValue="writes" id="rC4zLYkIIsgXgdHZqgya-170">
          <mxCell edge="1" parent="rC4zLYkIIsgXgdHZqgya-1" source="rC4zLYkIIsgXgdHZqgya-2" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.84;exitY=1;entryX=0.16;entryY=0;rounded=0;" target="rC4zLYkIIsgXgdHZqgya-127">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="478" y="730" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="has" mermaidId="e:ISSUE-&gt;COMMENT#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="has" id="rC4zLYkIIsgXgdHZqgya-171">
          <mxCell edge="1" parent="rC4zLYkIIsgXgdHZqgya-1" source="rC4zLYkIIsgXgdHZqgya-31" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="rC4zLYkIIsgXgdHZqgya-127">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="769" y="1026" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="categorizes" mermaidId="e:CATEGORY-&gt;ISSUE#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.16;entryY=0;" mermaidBaseValue="categorizes" id="rC4zLYkIIsgXgdHZqgya-172">
          <mxCell edge="1" parent="rC4zLYkIIsgXgdHZqgya-1" source="rC4zLYkIIsgXgdHZqgya-72" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.16;entryY=0;rounded=0;" target="rC4zLYkIIsgXgdHZqgya-31">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="584" y="402" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="located_at" mermaidId="e:LOCATION-&gt;ISSUE#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;" mermaidBaseValue="located_at" id="rC4zLYkIIsgXgdHZqgya-173">
          <mxCell edge="1" parent="rC4zLYkIIsgXgdHZqgya-1" source="rC4zLYkIIsgXgdHZqgya-89" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0.5;exitY=1;entryX=0.84;entryY=0;rounded=0;" target="rC4zLYkIIsgXgdHZqgya-31">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="953" y="412" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
        <UserObject label="has_status" mermaidId="e:STATUS-&gt;ISSUE#0" mermaidBaseStyle="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0;exitY=0.5;entryX=1;entryY=0.16;" mermaidBaseValue="has_status" id="rC4zLYkIIsgXgdHZqgya-174">
          <mxCell edge="1" parent="rC4zLYkIIsgXgdHZqgya-1" source="rC4zLYkIIsgXgdHZqgya-110" style="curved=1;startArrow=ERmandOne;startSize=14;endArrow=ERzeroToMany;endSize=14;strokeColor=light-dark(#333333,#cccccc);strokeWidth=1;html=1;fontSize=14;labelBackgroundColor=light-dark(#F8FFEC4D,#2a2a2a4D);fontFamily=Trebuchet MS,Verdana,Arial,sans-serif;fontColor=light-dark(#333333,#cccccc);exitX=0;exitY=0.5;entryX=1;entryY=0.16;rounded=0;" target="rC4zLYkIIsgXgdHZqgya-31">
            <mxGeometry relative="1" as="geometry">
              <Array as="points">
                <mxPoint x="1039" y="203" />
              </Array>
            </mxGeometry>
          </mxCell>
        </UserObject>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
