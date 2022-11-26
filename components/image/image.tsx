import NextImage, { ImageLoaderProps, ImageProps } from "next/image";

// opt-out of image optimization, no-op
const customLoader = ({ src }: ImageLoaderProps) => {
  return src;
};

export function Image(props: ImageProps) {
  return <NextImage {...props} loader={customLoader} />;
}
